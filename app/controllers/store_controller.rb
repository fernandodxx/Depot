class StoreController < ApplicationController
  include CurrentCart
  skip_before_action :authorize
  before_action :set_cart
  before_action :count_presence, only: %i[ index ]
  def index
    @products = Product.order(:title)
  end

  private

  def count_presence
    cookies[:counter] = cookies[:counter].to_i + 1
  end
end
