# Frozen_string_literal: true

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
        modify(array, right_half)
      end
    elsif right_half.empty?
      until left_half.empty?
        modify(array, left_half)
      end
    elsif left_half.min < right_half.min
      modify(array, left_half)
    else
      modify(array, right_half)
    end
  end
  array
end

def modify(array, half)
  array.delete(half.min)
  array.push(half.min)
  half.delete(half.min)
end

my_array = [7, 5, 4, 6, 3, 1, 2]
p merge_sort(my_array)
