

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
    
    
    bible_books = ['john', 'james']
    
    puts "---Main Menu---"
    while @running = true
      puts "Please enter the title of a book in the bible:"
      input = gets.chomp!
      while(bible_books.include?(input) == false)
        puts "Input is invalid. Please enter a name of a bible book."
        input = gets.chomp!
      end 
      
      puts "Please enter a chapter of your bible book"

    end
  end
  
  
end