class API::UsersController < ApplicationController

  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.json { render json: @user.to_json(methods: %w(total_earnings total_miles_driven)) }
    end
  end

  def index
    @users = User.all

    respond_to do |format|
      format.json { render json: @users.to_json(methods: %w(total_earnings total_miles_driven)) }
    end
  end
end
