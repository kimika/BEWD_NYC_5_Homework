class Bob
  def hey (message)
    response (message)
  end

  def response (msg)
  	if is_silent? (msg)
      "Fine. Be that way!"
    elsif is_yelling? (msg)
      "Woah, chill out!"
    elsif is_questioning? (msg)
      "Sure."
    else
      "Whatever."
    end
  end

  def is_silent? (msg)
      msg.squeeze.length<2
  end

  def is_yelling? (msg)
    msg == msg.upcase
  end

  def is_questioning? (msg)
    msg.end_with? "?"
  end

  def has_numbers? (msg)
 		if msg.to_i != 0
 			true
 		else
 			false
 		end
  end
end