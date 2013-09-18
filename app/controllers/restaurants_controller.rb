class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all 

    # if params(genre[:type])
    #   @restaurants = Restaurant.find(params[:genre])
    # else
    #   render 'index'
    # end
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

     respond_to do |format|
      if @restaurant.save
        format.html { redirect_to @restaurant, notice: 'Restaurant was successfully created!'}
      else
        format.html { render action: "new" }
      end
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
    params.require(:restaurant).permit(:name, :address, :city, :postal_code)
  end
end
