def first_anagram?(word1, word2)
    combinations = word1.split('').permutation.to_a
    combinations.map! { |ele| ele.join('') }
    combinations.include?(word2)
end

def second_anagram?(word1,word2)
    arr = word1.split("")
    arr2 = word2.split("")

    arr.each do |char|
        idx = arr2.find_index(char)
        if !idx.nil?
            arr2[idx] = ''
        end
    end
    arr2 = arr2.join('')
    arr2.length == 0

end

second_anagram?("abc", 'cab')

def third_anagram?(word1,word2)
    alpha = ("a".."z").to_a
    word1a = word1.split("")
    word2a = word2.split("")
    sort(word2a) == sort(word1a)
end


def sort(arr)
    return [] if arr.empty?
    first = arr[0]
    left = arr[1..-1].select{|ele| ele < first }
    right = arr[1..-1].select{|ele| ele >= first}
    sort(left) + [first] + sort(right)
end

def fourth_anagram?(word1,word2)
    hash = Hash.new(0)
    word1.each_char{|char| hash[char] += 1}
    word2.each_char{|char| hash[char] -= 1}
    hash.all? {|k,v| v == 0}
end

p fourth_anagram?("cat","atj")



   