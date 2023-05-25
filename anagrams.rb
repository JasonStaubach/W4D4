word1 = [1,2,3]

def first_anagram?(word1, word2)
   
end

def permutation(word)
    return word if word.length < 2
    r = [word[0]]
    j = []
    # r << word[0]
    r += permutation(word[1..-1])
    j += permutation(word[0..-2])
    j << word[-1]
    return ([word[0]] += permutation(word[1..-1])), j
end

p permutation([1,2])
    
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
    # anagrams = Array.new{Array.new(word1.length)}
    
    # (0...word1.length).each do |j|
    #     (0...word1.length).each do |i|
    #         anagrams[j][i + j % word1.length] = word1[i]



first_anagram?("ate","ten")


#ate = tea tae eta 