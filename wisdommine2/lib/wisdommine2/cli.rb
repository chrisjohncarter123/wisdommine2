require './scraper'
require './passage'


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
      number_of_verses = verses.count
      
      verses.each_with_index do |verse, index|
        puts "#{index + 1} - #{verse.text}"
      end
      
      puts "q - quit"
    
      puts "Please select a menu option:"
      
<<<<<<< HEAD
      input = get_input
=======
      input = gets.chomp!
>>>>>>> 0b3da14c1ee8860845a43a8ae7953d79894dcf9b
      
      if(input == 'q')
        puts "Goodbye!"
        break
      end

      while (is_integer(input) == false  || input.to_i <= 0 || input.to_i > number_of_verses)
        puts "Please enter an integer value between 1 and #{number_of_verses}."
<<<<<<< HEAD
        input = get_input
      end
      
      passage = Scraper.get_passage(input)
      
      puts passage.get_text
      
      puts "(press enter to continue)"
      
      input = get_input
      
      
=======
        input = gets.chomp!
      end
      
      passage = Scraper.get_passage(input)
      
      puts passage.get_text
>>>>>>> 0b3da14c1ee8860845a43a8ae7953d79894dcf9b

    end
  end
  
  
<<<<<<< HEAD
  def get_input
    gets.chomp
  end
  
=======
>>>>>>> 0b3da14c1ee8860845a43a8ae7953d79894dcf9b
  def is_integer(input)
    input.to_i.to_s == input
  end
  
end


CLI.new.run

