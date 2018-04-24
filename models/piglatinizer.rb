class PigLatinizer
  def piglatinize(string)
    words = string.split(" ")
    new_words = []

    words.map do |word|
      if word[0].downcase.match(/[aeiou]/)
        new_words << word + "way"
      else
        each_word = word.split("")

        each_word.length.times do
          if each_word[0].downcase.match(/[aeiou]/)
            break
          else
            each_word.push(each_word.shift)
          end
        end

        new_words << each_word.join + "ay"
      end
    end

    new_words.join(" ")
  end
end
