class LineItem < ActiveRecord::Base
  # Belongs to states that this class now links to the product, cart and order tables
  belongs_to :order
  belongs_to :product
  belongs_to :cart
  attr_accessible :cart_id, :product_id

  def total_price
    product.price * quantity
  end

end
