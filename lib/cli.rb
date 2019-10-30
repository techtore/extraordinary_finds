require 'pry'

class CLI
  def call 
    puts "Today's Extraordinary Finds:"
    print_finds
    menu
  end
  
  def print_finds
    Finds.all.each.with_index(1) do |index, title|
      puts "#{index}. #{title}"
    end
  end
  
  def menu
    input = nil 
    while input != "exit" 
      puts "Enter the number of the find you'd like more information about. Type print to see the finds again, or type exit:"
      input = gets.strip.downcase
      
      if input.to_i > 0 
        puts "#{product.name[input.to_i-1]}"
      
      elsif input == "print"
        print_finds
      else
        puts "Not sure what you want, type print or exit."
      end 
    end
 end
end
