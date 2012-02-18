class ApplicationController < ActionController::Base
  protect_from_forgery

  def x(obj)
    logger.info("-------------------")
    logger.info obj.inspect
    logger.info("-------------------")
  end
end
