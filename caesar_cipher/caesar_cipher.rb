def caesar_cipher(message, shift_factor)
    #65 - 90 => A-Z
    #97 - 122 => a-z
    
    #convert string into char array or iterate through each char
    message.each_char {|c| 
        #if char is alphabetic, do the shift
        puts is_letter?(c)
            #do shift
            #if the shift is out of the range, add in the correction
    }
    
    #make the char array into a string if applies
    #return shifted string
end

def is_letter?(c)
    charTest = c.match(/^[[:alpha:]]$/)
    if charTest == nil
        return false
    else
        return true
    end
end

print "Enter the message to encode: "
message = gets.chomp
print "Enter the shift factor: "
shift_factor = gets.chomp.to_i

caesar_cipher(message,shift_factor)