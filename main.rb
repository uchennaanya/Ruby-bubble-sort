def bubble_sort(array_list)
  array = array_list.size

  return 'Empty list' if array <= 1

  loop do
    sort = false

    (array - 1).times do |index|
      next unless array_list[index] > array_list[index + 1]

      array_list[index], array_list[index + 1] = array_list[index + 1], array_list[index]

      sort = true
    end
    break unless sort
  end
  array_list
end

arrays = [9, 8, 3, 0, 1]

p bubble_sort(arrays)

def bubble_sort_by(str_arry)
  str_arry.length.times do
    str_arry.each_with_index do |value, index|
      next unless index < str_arry.length - 1

      sort_value = yield(value, str_arry[index + 1])
      if sort_value.positive?
        str_arry[index] = str_arry[index + 1]
        str_arry[index + 1] = value
      end
    end
  end
  str_arry
end
display = bubble_sort_by(%w[hi hello hey]) do |left, right|
  left.length - right.length
end
p display
