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
    display = bubble_sort_by(%w[hi hello hey]) do
    |left, right| left.length - right.length 
    end
    p display