class Reservation < ActiveRecord::Base

  def index
    @reservations=Reservation.all
  end

  def show
    @reservation=Reservation.find(params[:id])
  end
end
