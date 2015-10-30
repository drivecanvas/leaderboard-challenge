class API::EarningsController < ApplicationController

  def index
    @user = User.find(params[:user_id])

    @earnings = @user.earnings

    if params[:day].present?
      day = Date.strptime(params[:day], "%m-%d-%Y")
      @earnings = @earnings.where("earned_at >= ? AND earned_at <= ?",
                                  day.beginning_of_day,
                                  day.end_of_day)
    end

    respond_to do |format|
      format.json { render json: @earnings }
    end
  end
end
