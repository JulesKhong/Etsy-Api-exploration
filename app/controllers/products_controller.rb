class ProductsController < ApplicationController
  def index
    # authorization stuff
    # request_token = Etsy.request_token
    # session[:request_token] = request_token.token
    # session[:request_secret] = request_token.secret
    # # binding.pry
    # redirect_to Etsy.verification_url
    @user = Etsy.user('sincerelylouise')
    @shop = @user.shop
    @listings = @shop.listings
  end
end
