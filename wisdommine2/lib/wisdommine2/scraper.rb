require 'pry'
require 'nokogiri'
require 'open-uri'
require './passage'

#ask for verse
#example input: 1 .. 27

#show passage

#class passage: verse (title), content


class Scraper
  
    def self.get_verses

      page = Nokogiri::HTML(open("https://www.biblestudytools.com/topical-verses/inspirational-bible-verses/"))
      return page.css(".list-group-item-heading")

    end
    
    def self.get_passage(verse_number)
      
      
      page = Nokogiri::HTML(open("https://www.biblestudytools.com/topical-verses/inspirational-bible-verses/"))
      
      
<<<<<<< HEAD
      result = Passage.new_from_scrape(page.css(".scripture")[verse_number.to_i - 1].text)
      
      return result
=======
      return Passage.new_from_scrape(page.css(".scripture ")[verse_number.to_i - 1])
>>>>>>> 0b3da14c1ee8860845a43a8ae7953d79894dcf9b
      
    end
  
end

