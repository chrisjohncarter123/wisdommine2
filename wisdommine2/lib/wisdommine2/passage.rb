class Passage
  
  attr_accessor :title, :content

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all

  end

end