def substrings(string, dictionary)
    hash = Hash.new(0)
    string = string.downcase
    dictionary.each do |word|
        if string.include?(word)
            count = string.gsub(word, "#").count("#")
            hash[word] = count
        end
    end
    p hash
    hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("Howdy partner, sit down! How's it going?", dictionary)