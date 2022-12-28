require 'httparty'
class CountriesController < ApplicationController
  def index
    response = HTTParty.get("https://restcountries.com/v3.1/all")
    if response.success?
      parsed_countries = response.map do |country|
        name_hash = country["name"]
      end 
      render json: parsed_countries, status: :ok
    else
      flash[:error] = "An error occurred while getting the list of countries"
      redirect_to root_path
    end
  end

  def create
    country = Country.new(name: params[:name]['common'])
    if country.save
      render json: country, status: :created
    else
      render json: country.errors, status: :unprocessable_entity
    end
  end

  def show
    @country = Country.find(params[:id])
    render json: @country, only: [:name]
  rescue ActiveRecord::RecordNotFound => e
    render json: { message: e.message }, status: :not_found
  end

  def country_params
    params.require(:country).permit(:name)
  end
end