class PigLatinizer 
  attr_accessor :string 

  def piglatinize(string)
    w = string.split(" ").map {|word| piglatinized(word)}
    join_words = w.join(" ")
  end

  def piglatinized(word)
    if word[0].downcase.start_with?("a", "u", "i", "e", "o")
      "#{word + 'way'}"
    else
      consonants = []
      first_letter = word[0]
      second_letter = word[1]
      third_letter = word[2]
      if ["a", "u", "i", "e", "o"].include?(first_letter) == false && first_letter != nil 
        consonants << first_letter
        if ["a", "u", "i", "e", "o"].include?(second_letter) == false && second_letter != nil 
          consonants << second_letter
          if ["a", "u", "i", "e", "o"].include?(third_letter) == false && third_letter != nil 
            consonants << third_letter
          end
        end
      end
      "#{word[consonants.length..-1] +consonants.join+ 'ay'}"
    end
  end
end 