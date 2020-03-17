require 'pry'
require 'nokogiri'
require 'open-uri'
require_relative './passage.rb'

class Scraper

    #create all the passage objects and give them each a title
    def self.create_passages

      passages = Nokogiri::HTML(open("https://www.biblestudytools.com/topical-verses/inspirational-bible-verses/")).css(".list-group-item-heading")

      passages.each do |passage|
        Passage.new(passage.text)
      end

    end

    #set the content of each passage
    def self.get_content
      
      contents = Nokogiri::HTML(open("https://www.biblestudytools.com/topical-verses/inspirational-bible-verses/")).css(".scripture")

      Passage.all.each_with_index do |passage, index|
        #.gsub(/\s+/, " ") removes extra white space
        passage.content = contents[index].text.gsub(/\s+/, " ")
      end
    end

end

