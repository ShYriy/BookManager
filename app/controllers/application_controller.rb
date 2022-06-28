class ApplicationController < ActionController::Base
  rescue_from ActionPolicy::Unauthorized, with: :user_not_authorized
end
