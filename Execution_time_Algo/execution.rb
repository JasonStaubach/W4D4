# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]


def my_min(list)
    list.each do |ele|
        smallest = true
        list.each do |ele2|
            smallest = false if ele > ele2
        end
        if smallest
            return ele
        end
    end
end
#time complexity O(n^2)

def my_min_fast(list)
    min = list[0]
    list.each do |ele|
        min = ele if ele < min
    end
    min
end
#time complexity O(n)

def largest_contiguous_subsum(list)
    list_of_sum = []
    (0...list.length).each do |i1|
        (i1...list.length).each do |i2|
            list_of_sum << list[i1..i2]
        end
    end
    total = []
    list_of_sum.each {|sums| total << sums.sum}
    total.max
end
#time complexity O(n^2)
#memory complexity O(n^2)


def largest_contiguous_subsum_fast(list)
    pointer1 = 0
    sum = 0
    while pointer1 < list.length
        if list[pointer1..-1].sum > sum
            sum = list[pointer1..-1].sum 
            i = pointer1
        end
        pointer1 += 1

    end
    list.reverse!
    pointer1 = 0
    sum = 0
    while pointer1 < list.length
        if list[pointer1..-1].sum > sum
            sum = list[pointer1..-1].sum 
            j = pointer1
        end
        pointer1 += 1

    end
    list.reverse!
    list[i..j].sum
end
list = [5, 3, -7]
p largest_contiguous_subsum_fast(list)

