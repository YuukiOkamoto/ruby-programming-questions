# frozen_string_literal: true

require 'date'

module DateUtil
  def beggining_of_month
    Date.new(year, month, 1)
  end

  def end_of_month
    Date.new(year, month, -1)
  end
end

class Date
  include DateUtil
end

today = Date.today
# 月の開始曜日（日曜が0土曜が6の0-6の数値）
start_day_of_month = today.beggining_of_month.wday

days = (today.beggining_of_month..today.end_of_month).map(&:day)
start_day_of_month.times { days.unshift('') }

puts("      #{today.strftime('%B %Y')}")
puts(' Su Mo Tu We Th Fr Sa')
days.each.with_index(1) do |day, i|
  print(day.to_s.rjust(3))
  print("\n") if i % 7 == 0
end
puts("\n")
