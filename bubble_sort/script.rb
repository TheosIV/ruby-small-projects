def bubble_sort(array)
    for i in 1..array.length-1
        array.each_with_index do |num, i|
            if num > array[i + 1].to_i && i != array.length - 1
                left_num = num
                array[i] = array[i+1]
                array[i+1] = left_num
            end
        end

        array == array.sort ? break : next
    end

    puts array
    return array
end

bubble_sort([4,3,78,2,0,2])