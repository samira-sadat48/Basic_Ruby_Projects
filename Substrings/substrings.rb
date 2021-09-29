def substrings(string,dictionary)
    substrings_hash = Hash.new
    lowercase_string = string.downcase

    #iterate through the dictionary    
    dictionary.each do |currentWord|
        #check if current word in dictionary of substring of user string
        if lowercase_string.include? currentWord
            #Add current word to hash (if it doesn't exist)
            substrings_hash[currentWord] = lowercase_string.scan(currentWord).length
        end
    end
    return substrings_hash
end

#Main----------------------------------------------------
print "Enter a string: "
string = gets.chomp

#Test dictionary - replace with user input
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings(string,dictionary)