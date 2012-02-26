class PortfolioController < ApplicationController
  before_filter :authenticate_user!
  def index
    @type = Invitation.select("id, invitation_type").where("is_active = 1")
  end

  def new
    @invitation = Invitation.find_by_id(params[:id]) #where("id = #{params[:id].to_i}")
    if(@invitation.nil? || @invitation.is_active != true)
      redirect_to :action => :index
    end
  end

  def design
    @invitation = Invitation.find_by_id(params[:type]) #where("id = #{params[:id].to_i}")
    if(@invitation.nil? || @invitation.is_active != true)
      redirect_to :action => :index
    end
  end

  def create
      event = Event.new(params[:event])
      if event.save
          render :text => "Done"
      else
          flash[:notice] = event.errors.messages #flash[:notice].to_a.concat resource.errors.full_messages
          error = {}

          form_fields = params[:event] #{:subtitle => params[:event]["subtitle"],:title => params[:event]["title"], :start_date => params[:event]["start_date"], :description => params[:event]["description"], :venue => params[:event]["venue"]}
          
          event.errors.messages.each do |k, v|
            error[k.to_sym] = "<#>#{params[:event][k.to_s]}"
          end
          error = form_fields.merge(error)
          flash[:error] = error
          redirect_to :controller => "portfolio", :action => "new", :id => params[:event]["invitation_id"]
      end
      return
  end

  def permission_setup
      render :layout => false
  end

end
