require 'pry'
class Scraper
  
  def self.scrape_finds
    binding.pry
    doc = Nokogiri::HTML(open("https://www.amazon.com/stores/page/A9853324-FB0C-42D1-A0FF-D25F69A0FAEA?pf_rd_p=4e8f08b2-3aad-4e0a-9552-11f30b6909e0&pf_rd_r=5YS3M8FC89JZ198NRXZ8"))
    
    doc.css("div.style_item_3gM_7")[0].each do |product|
      product = Finds.new
      product.title = doc.css("dic.style_itemInfoChild_he4Oh").css("a.style_title_3Z2Cu").text
     
    end
  end
  
  def self.scrape_finds_info(find)
    doc = Nokogiri::HTML(open("https://www.amazon.com/stores/page/A9853324-FB0C-42D1-A0FF-D25F69A0FAEA?pf_rd_p=4e8f08b2-3aad-4e0a-9552-11f30b6909e0&pf_rd_r=5YS3M8FC89JZ198NRXZ8"))
    

    price= doc.css("div.style_price_2Zrre").text
    review = doc.css("div.style_reviewAndBadgesWrapper_1gIZg").text
  end
  
end