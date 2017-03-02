def substrings phrase, dictionary
  frequencies = Hash.new(0)
  words = phrase.downcase.split(/[^A-Za-z]+/)
  words.each do |word|
    for i in 0...word.length
      for j in i...word.length
        if dictionary.include?(word[i..j])
          frequencies[word[i..j]] +=1
        end
      end
    end
  end
  frequencies
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

print substrings("Howdy partner, sit down! How's it going?", dictionary)
