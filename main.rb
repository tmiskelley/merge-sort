# Frozen_string_literal: true

require 'pry'

def merge_sort(array)
  return array if array.length <= 1

  left_half = array.slice(0, (array.length / 2))
  right_half = array.slice((array.length / 2), (array.length - 1))

  merge_sort(left_half)
  merge_sort(right_half)
end

my_array = [7, 4, 5, 6, 3, 1, 2]
p merge_sort(my_array)
