class Genre < ActiveRecord::Base
  
has_many :genres_restaurants
has_many :restaurants, :through => :genres_restaurants


  def self.cuisine
      @cuisine
  end
end
