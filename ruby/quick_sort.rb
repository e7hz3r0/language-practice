array = [10, 2, 1, 7, 9, 8, 0, 4, 6, 5, 3]


def sort(array)
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
  sort(left) + pivot_a + sort(right)
end

puts "Original array: #{array}"
puts "Sorted array: #{sort(array)}"
