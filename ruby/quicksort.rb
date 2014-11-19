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

  def self.in_place_quicksort(array, start_i = 0, end_i = nil)
    end_i ||= array.length - 1

    return array if start_i >= end_i

    pivot_i = [((end_i - start_i)/2).floor, start_i].max
    
    left = start_i
    right = end_i 

    while left <= right 
      while array[left] < array[pivot_i]
        left += 1
      end

      while array[right] > array[pivot_i]
        right -= 1
      end

      if left <= right
        tmp = array[left]
        array[left] = array[right]
        array[right] = tmp

        left += 1
        right -= 1
      end
    end

    in_place_quicksort(array, start_i, right)
    in_place_quicksort(array, left, end_i)
  end
end

