class CartsController < ApplicationController
  include CartsHelper
  layout false

  # def index
  #   @carts = Cart.all
  # end

  def show; end

  # def new
  #   @cart = Cart.new
  # end


  def destroy
    current_cart.destroy
    render :show
  end

  # private
  # def set_cart
  #   @cart = Cart.find(session[:id])
  #   rescue ActiveRecord::RecordNotFound
  #   @cart = Cart.create
  #   session[:id] = @cart.id
  # end
end
