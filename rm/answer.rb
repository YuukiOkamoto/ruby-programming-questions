require 'bigdecimal'

def calc_max_weight(weight, count)
  (weight * (1 + (BigDecimal(count) / 40))).round(1)
end

def print_line_start
  print('|')
end

def print_line_end
  print("\n")
end

def print_cell(num, unit)
  print("#{num}#{unit}".to_s.rjust(8))
  print('|')
end

# Header
print_line_start
1.upto(12) { |count| print_cell(count, 'reps') }
print_line_end

# Body
40.step(150, 5) do |weight|
  print_line_start
  print_cell(weight.to_f, 'kg')
  2.upto(12) { |count| print_cell(calc_max_weight(weight, count).to_f, 'kg') }
  print_line_end
end
