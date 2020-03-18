require_relative './scraper.rb'
require_relative './passage.rb'
require 'pry'

class CLI

  def start
    display_intro

    Scraper.create_passages
    Scraper.get_content

    loop
  end

  def display_intro

    puts "                                                      "
    puts "  ░██╗░░░░░░░██╗██╗░██████╗██████╗░░█████╗░███╗░░░███╗"
    puts "  ░██║░░██╗░░██║██║██╔════╝██╔══██╗██╔══██╗████╗░████║"
    puts "  ░╚██╗████╗██╔╝██║╚█████╗░██║░░██║██║░░██║██╔████╔██║"
    puts "  ░░████╔═████║░██║░╚═══██╗██║░░██║██║░░██║██║╚██╔╝██║"
    puts "  ░░╚██╔╝░╚██╔╝░██║██████╔╝██████╔╝╚█████╔╝██║░╚═╝░██║"
    puts "  ░░░╚═╝░░░╚═╝░░╚═╝╚═════╝░╚═════╝░░╚════╝░╚═╝░░░░░╚═╝"
    puts "                                                      "

    puts "                                                      "
    puts "             ███╗░░░███╗██╗███╗░░██╗███████╗          "
    puts "             ████╗░████║██║████╗░██║██╔════╝          "
    puts "             ██╔████╔██║██║██╔██╗██║█████╗░░          "
    puts "             ██║╚██╔╝██║██║██║╚████║██╔══╝░░          "
    puts "             ██║░╚═╝░██║██║██║░╚███║███████╗          "
    puts "             ╚═╝░░░░░╚═╝╚═╝╚═╝░░╚══╝╚══════╝          "
    puts "                                                      "

    puts "Welcome to " + "Wisdom Mine!"

  end

  def loop

    puts "----Main Menu----"
    puts "Please select a menu option:"

    display_menu_options

    input = get_passage_input

    display_passage(input)

    puts "To exit the program, enter exit"
    puts "To run Wisdom Mine again, enter run"

    input = get_input.downcase
    if(input == "exit")
      puts "Thank you for using Wisdom Mine!"
    elsif (input == "run")
      loop
    else
      puts "Input not valid."
      loop
    end


  end

  def display_menu_options

    # puts each verse
    Passage.all.each_with_index do |verse, index|
      puts "#{index + 1} - #{verse.title}"
    end

  end

  def get_passage_input

    input = get_input
    if (is_integer(input) == false  || input.to_i <= 0 || input.to_i > Passage.all.count)
      puts "Please enter an integer value between 1 and #{Passage.all.count}."

      return get_passage_input
    end
    return input
  end

  def display_passage(input)
    puts ""
    puts Passage.all[input.to_i - 1].title
    puts Passage.all[input.to_i - 1].content
    puts ""
    puts "(press enter to continue)"
    gets

  end


  def get_input
    gets.chomp
  end

  def is_integer(input)
    input.to_i.to_s == input
  end

  
end


