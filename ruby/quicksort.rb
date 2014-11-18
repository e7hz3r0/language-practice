module Sorting
  def self.quicksort(array)
    return array if array.length <= 1

    index = [((array.length - 1) / 2).floor, 0].max
    pivot = array[index]

    left = []
    right = []
    pivot_a = []
    array.each do |i|
      if i < pivot
        left << i
      elsif i > pivot
        right << i
      else 
        pivot_a << i
      end
    end
    quicksort(left) + pivot_a + quicksort(right)
  end
end

