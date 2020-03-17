require './scraper'


class CLI
  
  
  def initialize
    
  end
  
  

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
      
      verses.each_with_index do |verse, index|
        puts "#{index + 1} - #{verse.text}"
      end
    
      puts "Please select a menu option:"
      
      input = gets.chomp!
      while(bible_books.include?(input) == false)
        puts "Input is invalid. Please enter a name of a bible book."
        input = gets.chomp!
      end 
      
      puts "Please enter a chapter of your bible book"

    end
  end
  
  
end


CLI.new.run

