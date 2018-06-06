module ApplicationHelper

  def cart_count_over_one
    if @cart.line_items.count > 0
      item_count = 0
      @cart.line_items.each do |line_item|
        item_count += line_item.quantity
      end
      "<span class='btn btn-light' id='counter'>#{item_count}</span>".html_safe
    end
  end

  def cart_has_items
    @cart.line_items.count > 0
  end
end
