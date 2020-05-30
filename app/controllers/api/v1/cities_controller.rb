class Api::V1::CitiesController < ApplicationController
  def index
    @cities = City.published.all
    render json: @cities
  end
end
