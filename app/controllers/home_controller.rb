class HomeController < ApplicationController
  layout 'application'
  def index
    @title = "Inviteez"
    if user_signed_in?
        redirect_to :controller => "portfolio", :action => "index"
        return
    end
  end

  def edit_profile
    render :text => "yahoo "
  end
end
