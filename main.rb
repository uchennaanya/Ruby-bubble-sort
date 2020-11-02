def bubble_sort(array_list)
    array = array_list.size

    if array <= 1
        return "Empty list"
    end

    loop do 
        _sort = false

        (array-1).times do |index|

    if array_list[index] > array_list[index + 1]

        array_list[index], array_list[index + 1] = array_list[index + 1], array_list[index]

        _sort = true
    end
end
break if not _sort
end
array_list
end

arrays = [9, 8, 3, 0, 1]

p bubble_sort(arrays)

def bubble_sort_by(str_array)
        str_array.each_with_index do |value, index|
            
        next unless index < str_array.length - 1

        sort_value = yield(value, str_array[index + 1])
  
        if sort_value.positive?
          str_array[index] = str_array[index + 1]
          str_array[index + 1] = value
        end
    end
end

  display = bubble_sort_by(%w[hi hello hey]) do
   |left, right| left.length - right.length 
end

  p display
