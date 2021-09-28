def caesar_cipher(message, shift_factor)
    #65 - 90 => A-Z
    #97 - 122 => a-z
    result_message = ""
    #iterate through each char
    message.each_char {|c| 
        #if char is alphabetic, do the shift
        if is_letter?(c)
            #do shift
            if c.ord < 91
                base = 65
            else
                base = 97
            end
            #if the shift is out of the range, add in the correction
            correction = (((c.ord - base) + shift_factor) % 26) + base
            puts correction.chr
            result_message += correction.chr
        else
            result_message += c 
        end
    }
    #return shifted string
    return result_message;
end

def is_letter?(c)
    charTest = c.match(/^[[:alpha:]]$/)
    if charTest == nil
        return false
    else
        return true
    end
end

#MAIN---------------------------------------------------------------

print "Enter the message to encode: "
message = gets.chomp
print "Enter the shift factor: "
shift_factor = gets.chomp.to_i

puts "Your secret message is: " + caesar_cipher(message,shift_factor)