class CitiesController < ApplicationController
  def index
    cities = City.all
    render json: cities, status: :ok
  end

  def show
    city = City.find(params[:id])
    render json: city, status: :ok
  end

  def create
    city = City.new(city_params)
    if city.save
      render json: city, status: :created
    else
      render json: { errors: city.errors }, status: :unprocessable_entity
    end
  end

  def update
    city = City.find(params[:id])
    if city.update(city_params)
      render json: city, status: :ok
    else
      render json: { errors: city.errors }, status: :unprocessable_entity
    end
  end

  private

  def city_params
    params.require(:city).permit(:name, :state_id)
  end
end
