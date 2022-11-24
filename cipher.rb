def caesar_cipher(word = "Hello world!", shift = 0)
    new_word = ""
    #array of characters:
    word.split('').each do |c|
    if (c.ord >= 97 && c.ord <= 122) || (c.ord >= 65 && c.ord <= 90) then 
        if is_upper?(c) then 
            new_word += regulate_ord((c.downcase.ord+shift)).upcase
        else
        new_word += regulate_ord((c.ord + shift))
        end
    else
    new_word += c
    next
    end
end
new_word
end

def is_upper?(char) 
    char == char.upcase
end

def regulate_ord(char_num)
    number = nil
    if char_num < 97 then 
        number = 122-char_num+96
        number.chr
    elsif char_num > 122 then
        number = char_num-122+96
        number.chr
    else
        char_num.chr
    end
end

puts "Hi! please enter the word and the offset:"
word = gets.chomp
number = gets.chomp.to_i
puts "\nYour new word is #{caesar_cipher(word, number)}"