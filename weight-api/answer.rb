require 'net/http'
require 'date'
require 'json'

WEIGHT_API_URL = 'https://script.google.com/macros/s/AKfycbxC3kYvrHHcAHY3UJkzgsza3vMlML7BPh8AqU4fNYy6mqjF0HXV/exec'

def fetch_weight(uri_str, limit = 6)
  uri = URI.parse(uri_str)
  response = Net::HTTP.get_response(uri)

  case response.code.to_i
  when 200
    response.body
  when 301, 302
    unless limit.zero?
      fetch_weight(response['location'], limit.pred)
    else
      puts 'API request limit reached'
    end
  else
    puts 'API request returned an unintended response'
  end
end

data_list = JSON.parse(fetch_weight(WEIGHT_API_URL))['data']

monthly_data_list = data_list.group_by { |data| Date.parse(data['date']).strftime('%Y/%m') }

average_weight_list = monthly_data_list.map do |month, monthly_data|
  average_weight = (monthly_data.sum { |daily_data| daily_data['total'] } / monthly_data.size).round(1)
  { value: average_weight, measure_on: month }
end

puts JSON.pretty_generate({ average_weight: average_weight_list })
