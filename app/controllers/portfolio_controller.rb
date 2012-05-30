class PortfolioController < ApplicationController
  before_filter :authenticate_user!
  def index
    @type = Invitation.select("id, name").active
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
      @invitation_designs = InvitationDesign.all
    else
      @invitation_designs = InvitationDesign.where("id = #{params[:type]}")
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

  def customize_your_invitation
    @content = InvitationDesign.find(params[:id])
    @customize_invitation = true

    from = @content.html_design.index("<body>")
    to = @content.html_design.index("</body>")
    @template = @content.html_design[(from + 7)..(to-1)]

    render :layout => "custom_card"
  end

  def permission_setup
      render :layout => false
  end

  def load_panel
    render :partial => "control_panel"
  end
end
