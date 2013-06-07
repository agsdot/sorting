require 'pry'

require 'rspec'
require 'benchmark'


def sortarray(x)
  # comparisons = 0
  n = x.size # 7
  x.each_with_index do |val, i|
  # binding.pry
    swapped = false
      # puts "i:#{i}, n:#{n}, - #{x.inspect}"
    # (i..n).to_a.reverse.each do |j|
    ((i+1)..n).to_a.reverse.each do |j|

      # puts "i:#{i}, n:#{n}, j:#{j} - #{x.inspect}"
      # sleep 0.03
      # comparisons += 1
      if x[j-1] < x[j-2]
        x[j-1], x[j-2] = x[j-2], x[j-1]
        swapped = true
      end # if
    end # each

    break unless swapped

  end # each
  # puts comparisons
  x
end # def


array = (1..10).to_a.shuffle!
# puts '--------------'

puts sortarray(array)

Benchmark.bmbm(10) do |bench|

  n = 10
  puts "N = #{n}"
  ten = (1..10).map{rand(10_000)}
  hundred = (1..100).map{rand(10_000)}
  twohundred = (1..200).map{rand(10_000)}
  threehundred = (1..300).map{rand(10_000)}

  thousand = (1..1000).map{rand(10_000)}
  five_thousand = (1..5000).map{rand(10_000)}

  bench.report("ten") do
    n.times{sortarray(ten)}
  end

  bench.report("hundred") do
    n.times{sortarray(hundred)}
  end

  bench.report("twohundred") do
    n.times{sortarray(twohundred)}
  end

  bench.report("threehundred") do
    n.times{sortarray(threehundred)}
  end

  bench.report("thousand") do
    n.times{sortarray(thousand)}
  end

  bench.report("five thousand") do
    n.times{sortarray(five_thousand)}
  end

end


describe "#sortarray" do
  it "gives the correct first number" do
    array = [49,23,133,9]
    result = sortarray(array)
    expect(result[0]).to eq 9
  end

  it "gives the correct 2nd number" do
    array = [49,23,133,9]
    result = sortarray(array)
    expect(result[1]).to eq 23
  end

  it "gives the correct 3rd number" do
    array = [49,23,133,9]
    result = sortarray(array)
    expect(result[2]).to eq 49
  end

  it "gives the correct last number" do
    array = [49,23,133,9]
    result = sortarray(array)
    expect(result[3]).to eq 133
  end


end



