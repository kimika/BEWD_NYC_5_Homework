Book = Class.new do 
 @@timesIread = 0
  attr_accessor :name, :bookmark_page
  def initialize name, bookmark_page
    @name = name
    @bookmark_page = bookmark_page
  end
  def what
    "This book name is #{@name}"
  end
  def bookmark bookmark_page
    @bookmark_page = bookmark_page
   @@timesIread +=1
   "You have put a bookmark at page #{@bookmark_page}, you have read #{@@timesIread} times"
  end
  def is_bookmark
    "there is a bookmark #{@bookmark_page} page for #{@name}"
  end
  def read_pages read_pg
    @bookmark_page += read_pg
    @@timesIread +=1
  end
  def timeread
    "You have read #{@@timesIread} times"
  end
end

require 'minitest/autorun'                                                         
                                                                                   
describe Book do                                                                    
  it "has a name, bookmark, and the bookmark update works" do                                    
    Book1 = Book.new "InColdBlood", 0               
    Book1.what.must_equal "This book name is InColdBlood"
    Book1.is_bookmark.must_equal "there is a bookmark 0 page for InColdBlood"
    Book1.bookmark 60
    Book1.is_bookmark.must_equal "there is a bookmark 60 page for InColdBlood"
    Book1.read_pages 20
    Book1.is_bookmark.must_equal "there is a bookmark 80 page for InColdBlood"
    Book1.timeread.must_equal "You have read 2 times"
    Book.@@timesIread.mustequal 3
  end
  it "attr_accessor works" do
    Book2 = Book.new "InColdBlood", 0
    Book2.name="Hitchhikers' guide to the galaxy"
    Book2.name.must_equal "Hitchhikers' guide to the galaxy"
    Book2.bookmark_page=100
    Book2.bookmark_page.must_equal 100
  end
end