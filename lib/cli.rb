require 'pry'
require 'Nokogiri'
require 'open-uri'

class ExtraordinaryFinds::CLI
  def call 
    puts "Today's Extraordinary Finds:"
    print_finds
    menu
  
  end
  
  def print_finds
    Finds.all.each.with_index(1) do |index, title|
      puts "#{index}". "#{title}"
    end
  end
  
  def menu
    input = nil 
    while input != "exit" 
      puts "Enter the number of the find you'd like more information about. Type print to see the list again, or exit:"
    
    if input.to_i > 0 
      # product.name
    elsif input == "print"
      print_finds
    else
      puts "Not sure what you want, type print or exit."
    end 
  end
  
# end