def caesar_cipher(string, key)
    ascci_array = string.bytes
    #Basically it solve the problem of the key when it's too big |eg: when the key = 999 it does the 
    # same thing as when it's equal to 11|
    shift_key = key % 26
    puts shift_key
    shifted = ascci_array.map do |code|
        if code.between?(65, 90)
            if code.positive?
                code + shift_key > 90 ? code + shift_key - 26 : code + shift_key
            else
                code + shift_key < 65 ? code - shift_key + 26 : code - shift_key
            end
        elsif code.between?(97, 122)
            if code.positive?
                code + shift_key > 122 ? code + shift_key - 26 : code + shift_key
            else
                code + shift_key < 97 ? code - shift_key + 26 : code - shift_key
            end
        else
            code
        end
    end
    puts shifted
    puts shifted.pack('c*')
    return shifted.pack('c*')

end

caesar_cipher("OKAY Let's Go!", 14)