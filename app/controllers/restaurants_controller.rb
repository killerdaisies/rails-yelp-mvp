class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update]

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def show
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to @restaurant
    else
      render :new
    end
  end

  def edit
  end

  def update
    @restaurant.save
    redirect_to @restaurant
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:category, :name, :address, :phone_number)
  end

end

