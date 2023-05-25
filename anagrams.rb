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
p second_anagram?("abc", 'cab')
    
   
   