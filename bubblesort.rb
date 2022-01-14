num_array = [100, 4, 9, 10, 2, 19, 11]

def bubble_sort(array)
    not_sorted = true
    while not_sorted
        for i in 0..array.length-2
            if array[i] > array[i+1]
                val = array[i]
                array[i] = array[i+1]
                array[i+1] = val
                sorted_check = array.map.with_index { |num, index| num > array[index + 1] unless index == array.length - 1 }.compact
                not_sorted = sorted_check.any?
            end
        end
    end
    array
end

p bubble_sort(num_array)