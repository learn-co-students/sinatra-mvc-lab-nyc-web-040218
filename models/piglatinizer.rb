class PigLatinizer
  attr_accessor :text

  def initialize
    @text
  end

  def convert_to_array
    new_t = @text.downcase.split(" ")
    new_t
  end

  def pig_latin
    sentence = @string.split(" ")
    sentence.map!{|word| latinize(word)}
    sentence.join(" ")
  end

  def piglatinize(word)
    vowels = "aeiouAEIOU"
    new_array = []
    arr = word.split(" ")

    if arr.size == 1
      if vowels.include?(word[0])
        return word + "way"
      else
        until vowels.include?(word[0].downcase)
          word = word[1..-1] + word[0]
        end
      end
      word = word + "ay"
    else
      arr.each do |this_word|
        if vowels.include?(this_word[0])
          new_array << this_word + "way"
        else
          until vowels.include?(this_word[0].downcase)
            this_word = this_word[1..-1] + this_word[0]
          end

          new_array << this_word + "ay"
        end
      end
      return new_array.join(" ")
    end
  end

end
