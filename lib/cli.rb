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
    puts "Enter the number of the find you'd like more information for. Type print to see the list again, or exit."
    #some code here to reposnd to user input
  end 
  
# end