require 'json'
require 'date'

data_list = File.open('weight-json/data.json') { |file| JSON.load(file)['data'] }

monthly_data_list = data_list.group_by { |data| Date.parse(data['date']).strftime('%Y/%m') }

average_weight_list = monthly_data_list.map do |month, monthly_data|
  average_weight = (monthly_data.sum { |daily_data| daily_data['total'] } / monthly_data.size).round(1)
  { value: average_weight, measure_on: month }
end

puts JSON.pretty_generate({ average_weight: average_weight_list })
