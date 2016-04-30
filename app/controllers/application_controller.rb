class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
  skip_before_filter :verify_authenticity_token
  protect_from_forgery with: :null_session
  before_filter :authenticate

  def authenticate
    authenticate_or_request_with_http_basic do |user, password|
      user == "admin" && password == "admin"
    end
  end
end
