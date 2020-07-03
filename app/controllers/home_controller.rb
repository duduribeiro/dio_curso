class HomeController < ApplicationController
  def show
    @ads = Ad.all
  end
end
