class ReservationsController < ApplicationController

 def create

  @restaurant=Restaurant.find(params[:restaurant_id])
  @reservation = Reservation.create(reservation_params)
  @reservation.user_id=current_user.id
  @reservation.restaurant_id=@restaurant.id
  if @reservation.save
    redirect_to @restaurant
  else
    render "/restaurants/show", :id=>@restaurant.id
  end

 end
 
 private

 def reservation_params
   params.require(:reservation).permit(:notes, :user_id, :reserved_time, :reserved_day, :party_size) 
 end 
end
