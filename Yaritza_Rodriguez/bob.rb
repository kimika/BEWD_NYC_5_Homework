class Bob

  def hey(message)   #also responds to ! (screamed at)

  if message == message.upcase#also a respose to shouting with numbers
      "Woah, chill out!"

  #elsif message == message.upcase && message.include?("?")
    #  "Woah, chill out!"

  elsif message.include?('?')  # also covers questions with #s in them
    "Sure."

  elsif message == ('') || message == ('    ')
      "Fine. Be that way!"

  else
     "Whatever." #default includes response to being screamed at or if message has acronyms
  end

end
end
