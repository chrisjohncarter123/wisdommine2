require_relative './scraper.rb'
require_relative './passage.rb'
require 'pry'

class CLI

  def run
    puts reverse(red("                                                      "))
    puts reverse(red("  ░██╗░░░░░░░██╗██╗░██████╗██████╗░░█████╗░███╗░░░███╗"))
    puts reverse(red("  ░██║░░██╗░░██║██║██╔════╝██╔══██╗██╔══██╗████╗░████║"))
    puts reverse(red("  ░╚██╗████╗██╔╝██║╚█████╗░██║░░██║██║░░██║██╔████╔██║"))
    puts reverse(red("  ░░████╔═████║░██║░╚═══██╗██║░░██║██║░░██║██║╚██╔╝██║"))
    puts reverse(red("  ░░╚██╔╝░╚██╔╝░██║██████╔╝██████╔╝╚█████╔╝██║░╚═╝░██║"))
    puts reverse(red("  ░░░╚═╝░░░╚═╝░░╚═╝╚═════╝░╚═════╝░░╚════╝░╚═╝░░░░░╚═╝"))
    puts reverse(red("                                                      "))

    puts reverse(light_blue("                                                      "))
    puts reverse(light_blue("             ███╗░░░███╗██╗███╗░░██╗███████╗          "))
    puts reverse(light_blue("             ████╗░████║██║████╗░██║██╔════╝          "))
    puts reverse(light_blue("             ██╔████╔██║██║██╔██╗██║█████╗░░          "))
    puts reverse(light_blue("             ██║╚██╔╝██║██║██║╚████║██╔══╝░░          "))
    puts reverse(light_blue("             ██║░╚═╝░██║██║██║░╚███║███████╗          "))
    puts reverse(light_blue("             ╚═╝░░░░░╚═╝╚═╝╚═╝░░╚══╝╚══════╝          "))
    puts reverse(light_blue("                                                      "))





    puts blue("Welcome to " + "Wisdom Mine!")

    Scraper.create_passages
    Scraper.get_content
    passages = Passage.all
    number_of_passages = passages.count

    while true
    
      puts underline(blue("   Main Menu   "))
      
      passages.each_with_index do |verse, index|
        puts bold(green("#{index + 1} - #{verse.title}"))
      end
      
      puts red(bold("q - quit"))
    
      puts blue(bold("Please select a menu option:"))

      input = get_input

      if(input == 'q')
        puts blue("Goodbye!")
        break
      end
  
      while (is_integer(input) == false  || input.to_i <= 0 || input.to_i > number_of_passages)
        puts red("Please enter an integer value between 1 and #{number_of_passages}.")
  
        input = get_input
      end

      puts ""
      puts Passage.all[input.to_i - 1].title
      puts Passage.all[input.to_i - 1].content
      puts ""
      puts green("(press enter to continue)")
      
      get_input

    end
  end

  def get_input
    gets.chomp
  end

  def is_integer(input)
    input.to_i.to_s == input
  end



  def colorize(string, color_code)
    "\e[#{color_code}m#{string}\e[0m"
  end

  def bold(string)
    "\e[1m#{string}\e[22m"

  end

  def underline(string)
    "\e[4m#{string}\e[24m"

  end

  def reverse(string)
    "\e[7m#{string}\e[27m"

  end

  def red(string)
    colorize(string,31)
  end


  def green(string)
    colorize(string,32)
  end

  def yellow(string)
    colorize(string,33)
  end

  def blue(string)
    colorize(string,34)
  end

  def pink(string)
    colorize(string,35)
  end

  def light_blue(string)
    colorize(string,36)
  end
  
end


