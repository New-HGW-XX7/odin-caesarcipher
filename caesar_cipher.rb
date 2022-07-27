def encode_with_sub(string, shift)

    return p 'Between 1 and 25' if shift > 25 or shift < 1
    
    new_word = Array([])
    letters = Array('a'..'z')
    
    
    string.split('').each do |char|
    
        calc = letters.index(char.downcase) + shift 

        if char == char.upcase
            case
                when calc < 26
                    new_word << char.sub(char, letters[letters.index(char.downcase) + shift]).upcase
                
                when calc == 26
                    new_word << char.sub(char, letters[0]).upcase
                
                else
                    new_word << char.sub(char, letters[letters.index(char.downcase) - 26 + shift]).upcase
                
                end
        end

        if char == char.downcase
            case
                when calc < 26
                    new_word << char.sub(char, letters[letters.index(char) + shift])
                
                when calc == 26
                    new_word << char.sub(char, letters[0])
                
                else
                    new_word << char.sub(char, letters[letters.index(char) - 26 + shift])
                
                end
        end
    
    end

    p new_word.join

end
    
puts 'Input string'
string = gets.chomp

puts 'Input shiftnumber'
shift = gets.chomp.to_i

encode_with_sub(string, shift)