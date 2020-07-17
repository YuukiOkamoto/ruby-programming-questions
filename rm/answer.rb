require 'bigdecimal'
require 'bigdecimal/util'

def calc_max_weight(weight, count)
  (weight * (1 + (count.to_d / 40))).round(1)
end

def print_num_x_unit(num, unit)
  print("#{num}#{unit}".to_s.rjust(8))
  print('|')
end

print('|')
1.upto(12) { |count| print_num_x_unit(count, 'reps') }
print("\n")

40.step(150, 5) do |weight|
  print('|')
  print_num_x_unit(weight.to_f, 'kg')
  2.upto(12) { |count| print_num_x_unit(calc_max_weight(weight, count).to_f, 'kg') }
  print("\n")
end


