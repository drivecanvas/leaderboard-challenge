class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  rescue_from ActiveRecord::RecordNotFound do |exception|
    render json: { status: 404, code: exception.class.to_s, status: exception.to_s }, status: :not_found
  end

end
