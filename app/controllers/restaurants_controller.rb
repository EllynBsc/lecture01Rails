class RestaurantsController < ApplicationController
  RESTAURANTS = {
    1 => { name: "Dishoom", address: "Shoreditch, London", category: "indian" },
    2 => { name: "Sushi Samba", address: "City, London", category: "japanese" }
  }

  def index
    # raise !!! first thing that you do to make sure the params are passing
    # if there is a filter
    #   display the right info with the right category
    # else
    #   display all
    # end
    @category = params[:category]
    if @category.present?
      @restaurants = RESTAURANTS.select do |id, resto|
        resto[:category] == @category
      end
    else
      @restaurants = RESTAURANTS
    end
  end

  def create
    # raise
    render plain: "your restaurant is #{params[:name]} and is in #{params[:address]}"
  end

  def show
    # raise
    @resto = RESTAURANTS[params["id"].to_i]
  end

end
