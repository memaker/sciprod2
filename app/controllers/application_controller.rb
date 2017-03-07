class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # Roberto - forces an authentication before each action of any controller
  before_action :authenticate_user!
end
