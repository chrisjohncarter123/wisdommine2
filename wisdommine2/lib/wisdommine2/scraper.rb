require 'pry'
require 'nokogiri'
require 'open-uri'
require_relative './passage.rb'

#ask for verse
#example input: 1 .. 27

#show passage

#class passage: verse (title), content


class Scraper
  
    def self.get_verses

      verses = Nokogiri::HTML(open("https://www.biblestudytools.com/topical-verses/inspirational-bible-verses/")).css(".list-group-item-heading")

      passages = []

      verses.each_with_index do |verse, index|
        passages << Passage.new_from_scrape(verse.text)
      end

      return passages

    end
    
    def self.get_passage(verse_number)
      
      page = Nokogiri::HTML(open("https://www.biblestudytools.com/topical-verses/inspirational-bible-verses/"))

      result = Passage.new_from_scrape(page.css(".scripture")[verse_number.to_i - 1].text)
      
      return result

      #return Passage.new_from_scrape(page.css(".scripture ")[verse_number.to_i - 1])

      
    end


  
end

