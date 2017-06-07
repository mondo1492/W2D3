require 'byebug'

def my_uniq(arr)
  hash = Hash.new
  arr.each { |num| hash[num] = true }
  hash.keys
end

class Array
  def two_sum
    arr = []
    self[0...-1].each_with_index do |el1, idx1|
      self[idx1+1..-1].each_with_index do |el2, idx2|
        arr << [idx1, idx1 + idx2 + 1] if el1 + el2 == 0
      end
    end
    arr
  end
end

def my_transpose(arr)
  result = []
  arr.length.times do |i1|
    col = []
    arr.length.times do |i2|
      col << arr[i2][i1]
    end
    result << col
  end
  result
end

def stock_picker(stock_prices)
  # debugger
  biggest_diff = [0, 1]
  stock_prices[0...-1].each_with_index do |price1, day1|
    stock_prices[day1 + 1..-1].each_with_index do |price2, day2|
      if stock_prices[biggest_diff[1]] - stock_prices[biggest_diff[0]] < price2 - price1
        biggest_diff = [day1, day1 + day2 + 1]
      end
    end
  end
  biggest_diff
end
