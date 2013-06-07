require 'pry'

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


array = (50..60).to_a.shuffle!
# puts '--------------'
puts sortarray(array)


