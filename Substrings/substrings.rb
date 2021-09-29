def substrings(word,dictionary)
    #iterate through the dictionary
    dictionary.each do |currentWord|
        #check if current word in dictionary of substring of user word
        if word.include? currentWord
            puts currentWord
        end
    end
     #True -> 
end

#Main----------------------------------------------------
print "Enter a word to check for: "
word = gets.chomp

#Test dictionary - replace with user input
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings(word,dictionary)