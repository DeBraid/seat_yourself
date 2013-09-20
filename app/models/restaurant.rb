class Restaurant < ActiveRecord::Base
  has_and_belongs_to_many :genres

  def self.price_ranges
    %w(Low Medium High)
  end

end