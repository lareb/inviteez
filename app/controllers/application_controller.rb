class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :get_live_events

  def get_live_events
      if signed_in?
          @total_live_events = Event.where("user_id = #{current_user.id} AND is_live = 1").count(:all)
      end
  end

  def x(obj)
    logger.info("-------------------")
    logger.info obj.inspect
    logger.info("-------------------")
  end
end
