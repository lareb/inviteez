class PortfolioController < ApplicationController
  before_filter :authenticate_user!
  def index
    @type = Invitation.select("id, invitation_type").where("is_active = 1")
    #render :text => "Welcome #{current_user.email}!"
  end

  def new
    
  end


  def create
      event = Event.new(params[:event])
      if event.save!
          render :text => "Done"
      else
          render :text => "Oopss!!!"
      end
      return
  end
  
end
