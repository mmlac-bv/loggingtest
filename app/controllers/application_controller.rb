class ApplicationController < ActionController::Base
  protect_from_forgery

  rescue_from Exception do |ex| 
    ActiveSupport::Notifications.instrument "process_action.exception_object", message: ex.message, inspect: ex.inspect, backtrace: ex.backtrace

    raise ex
  end
end
