require 'net/http'
require 'date'
require 'json'

WEIGHT_API_URL = 'https://script.google.com/macros/s/AKfycbxC3kYvrHHcAHY3UJkzgsza3vMlML7BPh8AqU4fNYy6mqjF0HXV/exec'

def fetchWeight(uri_str)
  uri = URI.parse(uri_str)
  request = Net::HTTP::Get.new(uri)
  req_options = { use_ssl: uri.scheme == 'https' }
  response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
    http.request(request)
  end
  if response.code.start_with?('3')
    response = fetchWeight(response.header['location'])
  end
  response
end

response = fetchWeight(WEIGHT_API_URL)

data_list = JSON.parse(response.body)['data']

monthly_data_list = data_list.group_by { |data| Date.parse(data['date']).strftime('%Y/%m') }

average_weight_list = monthly_data_list.map do |month, monthly_data|
  average_weight = (monthly_data.sum { |daily_data| daily_data['total'] } / monthly_data.size).round(1)
  { value: average_weight, measure_on: month }
end

puts JSON.pretty_generate({ average_weight: average_weight_list })
