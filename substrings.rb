#Implement a method #substrings that takes a word as the first
#argument and then an array of valid substrings (your dictionary) as the
#second argument. It should return a hash listing each substring (caseinsensitive) 
#that was found in the original string and how many times it was found.
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
def substrings(string, dictionary)
    #create a new hash with the default value of 0
    result = Hash.new(0)
    lowered = string.lowered
    #check each element of the dictionary wor the string
    dictionary.each do |word|
        no_of_occurance = lowered.scan(word)
        result[word] = no_of_occurance unless no_of_occurance = 0
    end
    result

end 
