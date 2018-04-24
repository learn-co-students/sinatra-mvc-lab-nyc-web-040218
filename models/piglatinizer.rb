require "pry"
class PigLatinizer

  @alpha = ('a'..'z').to_a
  @vow = ['a','e','i','o','u']
  @cons = @alpha - @vow

  def cons?(phrase)
    phrase.match(/[aeiouAEIOU]/)
  end

  def check_single(word)
    if word.split(" ").size == 1
      true
    else
      false
    end

  end
  def single(phrase)
    phrase = phrase.split("")
    #accounts for I Y U
    if cons?(phrase[0])
      phrase = phrase.join + "way"
      # pork task hello
    elsif !cons?(phrase[0]) && !cons?(phrase[1]) && !cons?(phrase[2])
      pop = phrase.shift
      pop2 = phrase.shift
      pop3 = phrase.shift
      phrase << "#{pop}#{pop2}#{pop3}ay"
      phrase = phrase.join
    elsif !cons?(phrase[0]) && cons?(phrase[1])
      pop = phrase.shift
      phrase << "#{pop}ay"
      phrase = phrase.join
      # please
    elsif !cons?(phrase[0]) && !cons?(phrase[1])
      pop = phrase.shift
      pop2 = phrase.shift
      phrase << "#{pop}#{pop2}ay"
      phrase = phrase.join

    end

  end

def pig_sentence(phrase)
  phrase = phrase.split(" ")
  array = phrase.map do |word|
    phrase = single(word)

  end
  final = array.join(" ")
end


  def piglatinize(phrase)
    if check_single(phrase) == true
      phrase = single(phrase)
    else
      phrase = pig_sentence(phrase)

    end

    phrase

  end

end
