# Frozen_string_literal: true

def merge_sort(array)
  return array if array.length <= 1

  left_half = array.slice(0, (array.length / 2))
  right_half = array.slice((array.length / 2), (array.length - 1))
end

my_array = [1, 2, 3, 4, 5, 6, 7]
p merge_sort(my_array)
