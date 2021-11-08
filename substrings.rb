def substrings(string, dictionary)
    matches = Hash.new(0)

    dictionary.each do |word|
        for i in 0..(string.length-word.length)
            if string[i...i+word.length] == word
                matches[word] += 1
            end
        end
    end

    return matches
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p substrings("Howdy partner, sit down! How's it going?", dictionary)