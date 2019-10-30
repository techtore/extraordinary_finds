class ExtraordinaryFinds::Finds
  attr_accessor: :title, :price, :rating
  @@all = []
  
  def initialize 
    @@all << self
  end
  
  def self.all
    @@all 
  end
end