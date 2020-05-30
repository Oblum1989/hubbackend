class Api::V1::ShopsController < ApplicationController
  before_action :set_shop, only: [:show, :update, :destroy]

  def index
    @shops = Shop.published.all
    render json: @shops
  end

  def show
    render json: @shop
  end

  def create
    @shop = Shop.new(shop_params)
    @shop.user = current_user
    if @shop.save
      render json: @shop, status: :created
    else
      render json: @shop.errors, status: :unprocessable_entity
    end
  end

  def update
    if @shop.update(shop_params)
      render json: @shop
    else
      render json: @shop.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @shop.destroy
  end

  private
    def set_shop
      @shop = Shop.find(params[:id])
    end

    def shop_params
      params.require(:shop).permit(:name, :address, :schedule, :delivery_time, :facebook_url, :instagram_url, :web_url, :conditions_terms, :description, :user_id, :city_id, payment_options: [], order_options: [])
    end
end