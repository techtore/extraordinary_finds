require 'pry'

class ExtraordinaryFinds::CLI
  def call 
    puts "Today's Extraordinary Finds:"
    list_finds
    binding.pry
    menu
  end
  
  def list_finds
    puts 
    1.
    2.
    3.
    4.
    5.
    6.
    7.
    8.
    9.
    10.
  end
  def menu
    puts "Enter the number of the find you'd like more information for. Type list to see the list again, or exit."
    #some code here to reposnd to user input
  end 
  
end