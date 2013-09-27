class Restaurant < ActiveRecord::Base

  # has_many :genres_restaurants
  # has_many :genres, :through => :genres_restaurants
  has_many :reservations
  mount_uploader :restaurant_picture
  validates :postal_code, :price_range, presence: true

  # def self.price_ranges
  #   %w(Low Medium High)
  # end

  def time_slots
    collection=[]
    start_time=Time.now.beginning_of_hour
    end_time=Time.now.tomorrow.midnight-1.hour
    time=start_time

    while time < end_time
      collection<<[time.beginning_of_hour.hour, time.beginning_of_hour]
      time=time+1.hour
    end

    collection
  end



end

