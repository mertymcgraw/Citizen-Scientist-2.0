class HomeController < ApplicationController
  def index
    p "********"
    p user_signed_in?
    p "********"
  end 

end
