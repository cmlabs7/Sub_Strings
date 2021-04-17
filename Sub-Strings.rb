dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


def substrings(phrase, dictionary)
    phrase = phrase.split(" ")
    newArray = []
   
    phrase.each do |phrase|
        dictionary.each do |word| 
            if (phrase.downcase.include? word) == true 
                newArray.push(word)
            end
        end
    end
        newArray.reduce(Hash.new(0)) do |key, count| 
            key[count] += 1
            key
        end
    end

substrings("Howdy partner, sit down! How's it going?", dictionary)