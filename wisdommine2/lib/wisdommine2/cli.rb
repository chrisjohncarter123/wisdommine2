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

    Scraper.create_passages
    Scraper.get_content
    passages = Passage.all
    number_of_passages = passages.count

    while true
    
      puts "---Main Menu---"
      
      passages.each_with_index do |verse, index|
        puts "#{index + 1} - #{verse.title}"
      end
      
      puts "q - quit"
    
      puts "Please select a menu option:"

      input = get_input

      if(input == 'q')
        puts "Goodbye!"
        break
      end
  
      while (is_integer(input) == false  || input.to_i <= 0 || input.to_i > number_of_passages)
        puts "Please enter an integer value between 1 and #{number_of_passages}."
  
        input = get_input
      end

      puts ""
      puts Passage.all[input.to_i - 1].title
      puts Passage.all[input.to_i - 1].content
      puts ""
      puts "(press enter to continue)"
      
      get_input

    end
  end

  def get_input
    gets.chomp
  end

  def is_integer(input)
    input.to_i.to_s == input
  end
  
end


