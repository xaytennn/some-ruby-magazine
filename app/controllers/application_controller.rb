class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  #
  #
  def cart_itemss
    current_cart_cart.cart_items
  end
  #
  # def cart_total
  #   return 0 if cart_items.none?
  #
  #   cart_items.joins(:product)
  #       .select('(cart_items.quantity * products.price) as total')
  #       .sum { |x| x[:total] }
  # end
  #
  def current_cart_cart
    @current_cart_cart ||= begin
      Cart.find_or_create_by(user: current_user)
    end
  end
  #
  helper_method :current_cart, :cart_itemss, :cart_total
end
