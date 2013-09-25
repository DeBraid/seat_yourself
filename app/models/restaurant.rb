class Restaurant < ActiveRecord::Base

  # has_many :genres_restaurants
  # has_many :genres, :through => :genres_restaurants
  has_many :reservations

  # def self.price_ranges
  #   %w(Low Medium High)
  # end

end