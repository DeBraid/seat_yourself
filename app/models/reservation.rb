class Reservation < ActiveRecord::Base

  belongs_to :restaurant
  belongs_to :user

  def index
    @reservations=Reservation.all
  end

  def show
    @reservation=Reservation.find(params[:id])
  end
end
