class Bob
  def hey(phrase)
    result = ''
    if phrase.empty? || phrase.squeeze.length < 2
      'Fine. Be that way!'
    elsif phrase == phrase.upcase
      'Woah, chill out!'
    elsif phrase.end_with? '?'
      'Sure.'
    else
      'Whatever.'
    end
  end
end