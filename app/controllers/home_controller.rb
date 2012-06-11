class HomeController < ApplicationController
  layout 'application'
  def index
    @title = "Inviteez"
    if user_signed_in?
        redirect_to :controller => "invitation", :action => "index"
        return
    end
  end

  def tmp_design
    render :layout => false
  end

  def edit_profile
    render :text => "yahoo "
  end
end
