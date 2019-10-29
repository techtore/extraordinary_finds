require 'pry'
require 'Nokogiri'
require 'open-uri'

class ExtraordinaryFinds::CLI
  def call 
    puts "Today's Extraordinary Finds:"
    # list_finds
    # menu
    doc = Nokogiri::HTML(open("https://www.amazon.com/stores/page/A9853324-FB0C-42D1-A0FF-D25F69A0FAEA?pf_rd_p=4e8f08b2-3aad-4e0a-9552-11f30b6909e0&pf_rd_r=5YS3M8FC89JZ198NRXZ8"))
    
    doc.css("div.style_itemInfo_3C9wg").each do |product|
      product.attribute("href").value
      title = doc.css("a.style_title_3Z2Cu").text
      price= doc.css(div.)
    end
  end
  
#   def list_finds
#     puts 
#     1.
#     2.
#     3.
#     4.
#     5.
#     6.
#     7.
#     8.
#     9.
#     10.
#   end
#   def menu
#     puts "Enter the number of the find you'd like more information for. Type list to see the list again, or exit."
#     #some code here to reposnd to user input
#   end 
  
# end