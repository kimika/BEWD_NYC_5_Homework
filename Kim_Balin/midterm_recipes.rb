class Recipe
  
  attr_accessor :title, :url, :ingredient

  def initialize title, url, ingredient
    @title = title
    @url = url
    @ingredient =["eggs", "chicken", "beef", "pork", "cucumbers", "lettuce", "fish", "rice", "noodles", "bread"]
  end
end
