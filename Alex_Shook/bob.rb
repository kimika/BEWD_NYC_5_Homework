class Bob
  def hey(phrase)
    result = ''
    if (phrase).empty? || (phrase).length <= 5
      'Fine. Be that way!'
    elsif (phrase) == phrase.upcase
      'Woah, chill out!'
    elsif (phrase).end_with? '?'
      'Sure.'
   elsif (phrase).end_with? '.'
      'Whatever.'     
    else
        'Whatever.'
    end
  end
end