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


array = (1..10000).to_a.shuffle!
# puts '--------------'

puts sortarray(array)



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


    # it "pops off the last node of the list" do
    #   list = List.new
    #   list.push(5)
    #   list.pop
    #   expect(list.size).to eq 0
    # end

