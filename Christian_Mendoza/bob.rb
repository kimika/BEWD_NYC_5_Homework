class Bob
  def hey (message)
    respond (message)
  end

  def respond (statement)
    response = ['Fine. Be that way!', 'Woah, chill out!', 'Sure.', 'Whatever.']

    @statement = statement

    if is_silent?
      response[0]
    elsif is_yelling?
      # BEGIN additional checks for bonus homework
      if has_numbers?
        if ends_exclaimation?
          response[1]
        elsif is_questioning?
          response[2]
        elsif has_no_punctuations?
          response[3]
        end
      # END additional checks for bonus homework
      else
        response[1]
      end
    elsif is_questioning?
      response[2]
    else
      response[3]
    end
  end

  def is_silent?
    @statement.squeeze.length < 2
  end

  def is_yelling?
    @statement == @statement.upcase
  end

  def is_questioning?
    @statement.end_with? '?'
  end

  def has_numbers?
    @statement.to_i != 0
    #(@msg =~ /[0-9]/) == 0
  end

  def ends_exclaimation?
    @statement.end_with? '!'
  end

  def ends_period?
    @statement.end_with? '.'
  end

  def has_no_punctuations?
    !is_questioning? || !ends_exclaimation? || !ends_period?
  end
end
