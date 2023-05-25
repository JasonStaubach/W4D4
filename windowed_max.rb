def windowed_max_range(arr,val)
    current_max_range = nil
    (0..arr.length-val).each do |i|
        min = arr[i...i+val].min
        max = arr[i...i+val].max
        current_max_range = max-min if current_max_range.nil?
        if max-min > current_max_range
            current_max_range = max-min
        end
    end
    current_max_range
end

p windowed_max_range([1, 0, 2, 5, 4, 8], 2) == 4 # 4, 8
p windowed_max_range([1, 0, 2, 5, 4, 8], 3) == 5 # 0, 2, 5
p windowed_max_range([1, 0, 2, 5, 4, 8], 4) == 6 # 2, 5, 4, 8
p windowed_max_range([1, 3, 2, 5, 4, 8], 5) == 6 # 3, 2, 5, 4, 8


class MyQueue
    def initialize
        @store = []
    end

    def peek
        @store.last
    end

    def size
        @store.length
    end
    
    def empty?
        @store.length == 0
    end

    def enqueue(value)
        @store.push(value)
    end

    def dequeue(value)
        @store.shift
    end
end

class MyStack
    def initialize
        @store = []
    end

    def peek
        @store.last
    end

    def size
        @store.length
    end
    
    def empty?
        @store.length == 0
    end

    def push(value)
        @store.push(value)
    end

    def pop(value)
        @store.pop
    end

end


class StackQueue
    def initialize
        @stack1 = MyStack.new
        @stack2 = MyStack.new
    end

    def size
        stack1.size + stack2.size
    end

    def empty?
        stack1.empty? && stack2.empty?
    end

    def enqueue(value)
        until stack2.empty?
            stack1.push(stack2.pop)
        end
        stack1.push(value)
    end

    def dequeue
        until stack1.empty?
            stack2.push(stack1.pop)
        end
        stack2.shift
    end

end

