class DesignTemplatesController < ApplicationController
  before_filter :authenticate_user!
  
  def preview
    @design = InvitationDesign.select("html_design").find_by_id(params[:id])
    render :layout => false
  end
end
