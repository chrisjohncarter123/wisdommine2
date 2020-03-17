class Passage
  
<<<<<<< HEAD

=======
  
  
>>>>>>> 0b3da14c1ee8860845a43a8ae7953d79894dcf9b
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