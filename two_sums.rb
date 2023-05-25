def brute_force(arr, val)
    (0...arr.length).each do |i|
        ((i+1)...arr.length).each do |j|
            return true if arr[i] + arr[j] == val
        end
    end
    false
end

def sort_two_val(arr, val)
    arr.sort
    last = arr.length - 1
    first = 0
    until last == first
        if arr[last] + arr[first] == val
            return true
        elsif arr[last] + arr[first] < val
            first += 1
        else
            last -= 1
        end
    end
    !(last == first)
    
end


arr = [5, 1, 0, 7]
p sort_two_val(arr, 5) # => should be true
p sort_two_val(arr, 10) # => should be false