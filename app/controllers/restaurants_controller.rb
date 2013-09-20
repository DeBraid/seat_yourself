class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all 
    @genres = Genre.all

  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.create(restaurant_params)
   
    if @restaurant.save
      redirect_to @restaurant
    else
      render "new"
    end
  end


  def update
    @restaurant = Restaurant.find(params[:id])
    if 
      @restaurant.update(restaurant_params)
        redirect_to @restaurant
    else
      render 'edit'
    end
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
  end
  
private 

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :city, :postal_code, :genre_ids, :price_range)
  end
end
