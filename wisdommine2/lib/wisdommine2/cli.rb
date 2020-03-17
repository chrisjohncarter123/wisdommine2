require_relative './scraper.rb'
require_relative './passage.rb'
require 'pry'

class CLI

  def run
    puts"                                                        "
    puts"  ░██╗░░░░░░░██╗██╗░██████╗██████╗░░█████╗░███╗░░░███╗"
    puts"  ░██║░░██╗░░██║██║██╔════╝██╔══██╗██╔══██╗████╗░████║"
    puts"  ░╚██╗████╗██╔╝██║╚█████╗░██║░░██║██║░░██║██╔████╔██║"
    puts"  ░░████╔═████║░██║░╚═══██╗██║░░██║██║░░██║██║╚██╔╝██║"
    puts"  ░░╚██╔╝░╚██╔╝░██║██████╔╝██████╔╝╚█████╔╝██║░╚═╝░██║"
    puts"  ░░░╚═╝░░░╚═╝░░╚═╝╚═════╝░╚═════╝░░╚════╝░╚═╝░░░░░╚═╝"
    puts"                                                      "

    puts"             ███╗░░░███╗██╗███╗░░██╗███████╗          "
    puts"             ████╗░████║██║████╗░██║██╔════╝          "
    puts"             ██╔████╔██║██║██╔██╗██║█████╗░░          "
    puts"             ██║╚██╔╝██║██║██║╚████║██╔══╝░░          "
    puts"             ██║░╚═╝░██║██║██║░╚███║███████╗          "
    puts"             ╚═╝░░░░░╚═╝╚═╝╚═╝░░╚══╝╚══════╝          "
    puts"                                                      "


    puts "Welcome to " + "Wisdom Mine!"
    
    
    running = true
    
    while running == true
    
      puts "---Main Menu---"
      
      verses = Scraper.get_verses
      number_of_verses = verses.count
      
      verses.each_with_index do |verse, index|
        puts "#{index + 1} - #{verse.get_text}"
      end
      
      puts "q - quit"
    
      puts "Please select a menu option:"
      
  
      input = get_input
  
      
      if(input == 'q')
        puts "Goodbye!"
        break
      end
  
      while (is_integer(input) == false  || input.to_i <= 0 || input.to_i > number_of_verses)
        puts "Please enter an integer value between 1 and #{number_of_verses}."
  
        input = get_input
      end
      
      passage = Scraper.get_passage(input)
      
      puts passage.get_text
      
      puts "(press enter to continue)"
      
      input = get_input

    end
  end

  def get_input
    gets.chomp
  end
  

  def is_integer(input)
    input.to_i.to_s == input
  end
  
end

#CLI.new.run

