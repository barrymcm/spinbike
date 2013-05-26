class StoreController < ApplicationController
  skip_before_filter :authorize

  def index
    @products = Product.order(:category)
    @cart = current_cart
  end

  def bikes

    @bikes = Product.all

  end

  def accessories

    @products = Product.order(:category)
    @cart = current_cart
    @accessories = Product.where(:category => 'accessories')

  end

  def promotions
    @products = Product.order(:category)
    @cart = current_cart
    @promotions = Product.where(:id => [rand(1), rand(15)])

  end

  def road_bikes

    @products = Product.order(:category)
    @cart = current_cart
    @road_bikes = Product.where(:category => 'road bike')

  end

  def mountain_bikes

    @products = Product.order(:category)
    @cart = current_cart
    @mountain_bikes = Product.where(:category => 'mtb')

  end

  def leisure_bikes

    @products = Product.order(:category)
    @cart = current_cart
    @leisure_bikes = Product.where(:category => 'leisure bike')

  end

end
