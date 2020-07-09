require 'bigdecimal'
require 'bigdecimal/util'

def calc_max_weight(weight, count)
  (weight * (1 + (count.to_d / 40.0))).round(1).to_f
end

print('|')
1.upto(10) do |count|
  print("#{count}reps".to_s.rjust(8))
  print('|')
end
print("\n")

40.step(150, 5) do |weight|
  print('|')
  1.upto(10) do |count|
    print("#{calc_max_weight(weight, count)}kg".rjust(8))
    print('|')
  end
  print("\n")
end


