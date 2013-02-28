class Order < ActiveRecord::Base
  has_many :line_items, dependent: :destroy
  attr_accessible :address, :email, :name, :pay_type
  
  PAYMENT_TYPES = [ "Bankeinzug", "Kreditkarte", "auf Rechnung" ]
  validates :name, :address, :email, presence: true
  validate :pay_type, inclusion: PAYMENT_TYPES
  
  def add_line_items_from_cart(cart)
    cart.line_items.each do |item|
      item.cart_id = nil
      line_items << item
    end
  end
end
