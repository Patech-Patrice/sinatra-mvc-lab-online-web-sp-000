class PigLatinizer
  def to_pig_latin(phrase)
    words = phrase.split(" ")
    words.collect {|w| piglatinize(w)}.join(" ")
  end

  def piglatinize(input_str)
   input_str.split(" ").length == 1 ? piglatinize_word(input_str) : piglatinize_sentence(input_str)
 end

  def piglatinize(word)
    parts_of_word = word.split(/([^aeiouAEIOU]*)([aeiouAEIOU]*)(.*)/)
    start = parts_of_word[1]
    rest = parts_of_word[2] + (parts_of_word[3] || "")
    if start.length>0
      "#{rest}#{start}ay"
    else
      "#{rest}way"
    end
  end
end
