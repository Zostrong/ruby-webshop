class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include UserCart
  before_action :set_cart
end
