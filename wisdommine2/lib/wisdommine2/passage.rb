class Passage
  
  
  
  def initialize(text)
    @text =  text
  end

  def self.new_from_scrape(page)

    self.new(page)

  end


  def get_text

    return @text

  end

end