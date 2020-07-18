require 'benchmark'

array = 10_000.times.map { ('A'..'Z').to_a.sample(6).join }

Benchmark.bm(7) do |r|
  r.report "each+" do
    str = ''
    array.each{|x| str += x}
  end
  r.report "each<<" do
    str = ''
    array.each{|x| str << x}
  end
  r.report "inject+" do
    str = array.inject(:+)
  end
  r.report "inject<<" do
    str = array.inject(:<<)
  end
  r.report "join" do
    str = array.join
  end
end