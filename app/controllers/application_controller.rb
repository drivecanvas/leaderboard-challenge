class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

  rescue_from ActiveRecord::RecordNotFound do |exception|
    render json: { status: 404, code: exception.class.to_s, status: exception.to_s }, status: :not_found
  end

end
