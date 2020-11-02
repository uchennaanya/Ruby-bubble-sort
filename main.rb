def bubble_sort(array_list)
    array = array_list.size

    if array <= 1
        return array_list
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

arrays = [8, 3, 10, 1, 4, 6, ]

p bubble_sort(arrays)
