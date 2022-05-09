# Frozen_string_literal: true

require 'pry'

def merge_sort(array)
  return array if array.length <= 1

  left_half = array.slice(0, (array.length / 2))
  right_half = array.slice((array.length / 2), (array.length - 1))

  merge_sort(left_half)
  merge_sort(right_half)
  binding.pry
  until left_half.empty? || right_half.empty?
    # organizes elements into ascending order
    if left_half.max > right_half.max
      array.delete(left_half.max)
      array.unshift(left_half.max)
      left_half.delete(left_half.max)
    else
      array.delete(right_half.max)
      array.unshift(right_half.max)
      right_half.delete(right_half.max)
    end
  end

my_array = [7, 5, 4, 6, 3, 1, 2]
p merge_sort(my_array)
