require 'bigdecimal'

def calc_max_weight(weight, count)
  (weight * (1 + (BigDecimal(count) / 40))).round(1)
end

def print_cell(num, unit)
  print("#{num}#{unit}".to_s.rjust(8))
  print('|')
end

print('|')
1.upto(12) { |count| print_cell(count, 'reps') }
print("\n")

40.step(150, 5) do |weight|
  print('|')
  print_cell(weight.to_f, 'kg')
  2.upto(12) { |count| print_cell(calc_max_weight(weight, count).to_f, 'kg') }
  print("\n")
end
