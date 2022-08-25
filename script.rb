#Dictionary of words
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

# Method declaration
def substrings (string, dictionary)
    substring_final = Hash.new
    dictionary.reduce(Hash.new(0)) do |substring_count, substring|
        if string.downcase.include?(substring)
            substring_count[substring] = string.downcase.scan(/(?=#{substring})/).count #Matching using regex
        end
        substring_final = substring_count
    end
    p substring_final
end

#Method calls
substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)
