def substrings(string,dictionary)
  string_lower = string.downcase
  found_words = dictionary.select{|word| string_lower.include? word}
  found_words.reduce(Hash.new(0)) do |hash, word|
    hash[word] = string_lower.scan(/#{word}/).length
    hash
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low",
  "own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)