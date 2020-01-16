class CartsController < ApplicationController
  include CartsHelper
  include CurrentCart
  before_action :set_cart, only: [:create]
  before_action :set_cart, only: [:show, :destroy]
  # layout false

  def index
    @carts = Cart.all
  end

  def show; end

  def new
    @cart = Cart.new
  end


  def destroy
    current_cart.destroy
    render :show
  end

  def create
    @cart = Cart.new(cart_params)
  end
end
