# Frozen_string_literal: true

require 'pry'

def merge_sort(array)
  return array if array.length <= 1

  left_half = array.slice(0, (array.length / 2))
  right_half = array.slice((array.length / 2), (array.length - 1))

  merge_sort(left_half)
  merge_sort(right_half)

  until left_half.empty? && right_half.empty?
    # organizes elements into ascending order
    if left_half.empty?
      until right_half.empty?
        array.delete(right_half.min)
        array.push(right_half.min)
        right_half.delete(right_half.min)
      end
    elsif right_half.empty?
      until left_half.empty?
        array.delete(left_half.min)
        array.push(left_half.min)
        left_half.delete(left_half.min)
      end
    elsif left_half.min < right_half.min
      array.delete(left_half.min)
      array.push(left_half.min)
      left_half.delete(left_half.min)
    else
      array.delete(right_half.min)
      array.push(right_half.min)
      right_half.delete(right_half.min)
    end
  end
  array
end

my_array = [7, 5, 4, 6, 3, 1, 2]
p merge_sort(my_array)
