require 'pry'
require 'nokogiri'
require 'open-uri'

#ask for verse
#example input: 1 .. 27

#show passage

#class passage: verse (title), content


class Scraper
  
    def self.get_verses

      page = Nokogiri::HTML(open("https://www.biblestudytools.com/topical-verses/inspirational-bible-verses/"))
      return page.css(".list-group-item-heading")

    end
    
    def self.get_passage#(verse_number)
      
      page = Nokogiri::HTML(open("https://www.biblestudytools.com/topical-verses/inspirational-bible-verses/"))
      
      binding.pry
      
      #return page.css(".scripture")
      
    end
  
end

Scraper.get_passage

