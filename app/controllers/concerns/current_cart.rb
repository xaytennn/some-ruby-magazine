module CurrentCart
  extend ActiveSupport::Concern
  private
  def set_cart
    @cart = Cart.find(sesson[:cart_id])
  rescue ActiveRecord::RecordNotFound
    @cart = Cart.crerate
    session[:cart_id] = @cart.id
  end
end
