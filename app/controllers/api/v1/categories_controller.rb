class Api::V1::CategoriesController < ApplicationController
  def index
    @categories = Category.published.all
    render json: @categories
  end
end
