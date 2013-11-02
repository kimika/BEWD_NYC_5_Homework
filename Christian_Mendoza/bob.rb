class Bob
  def hey (message)
    respond (message)
  end

  def respond (msg)
    response = ["Fine. Be that way!", "Woah, chill out!", "Sure.", "Whatever."]
    
    if is_silent? (msg)
      response[0]
    elsif is_yelling? (msg)
      response[1]
    elsif is_questioning? (msg)
      response[2]
    else
      response[3]
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