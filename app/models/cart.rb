class Cart < ApplicationRecord
  has_many :line_items, dependent: :destroy

  def add_product(product)
    user_item = line_items.find_by(product_id: product.id)
    if user_item
      user_item.increment(:quantity)
    else
      user_item = line_items.build(product_id: product.id)
    end
    user_item
  end

  def total_price
    line_items.to_a.sum { |item| item.total_price }
  end
end
