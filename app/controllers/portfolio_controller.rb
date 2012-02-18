class PortfolioController < ApplicationController
  before_filter :authenticate_user!
  def index
    UserMailer.welcome_email(current_user).deliver
    #render :text => "Welcome #{current_user.email}!"
  end

end
