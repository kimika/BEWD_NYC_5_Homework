require 'minitest/autorun'

describe Person do
 
 it "is initialized with a name and a profession" do
  Person = Person.new "Steven", "Software Developer"
  Person.introduce.must_equal "Hi My name is Steven.  I'm a Software Developer"
  Person.introduce_from_across_the_room.must_equal "HI MY NAME IS STEVEN.  I'M A SOFTWARE DEVELOPER"
end 
