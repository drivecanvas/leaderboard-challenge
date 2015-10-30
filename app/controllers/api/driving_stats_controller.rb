class API::DrivingStatsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @driving_stats = @user.driving_stats

    if params[:day].present?
      day = Date.strptime(params[:day], "%m-%d-%Y")
      @driving_stats = @driving_stats.where("ended_at >= ? AND ended_at <= ?",
                                  day.beginning_of_day,
                                  day.end_of_day)
    end

    respond_to do |format|
      format.json { render json: @driving_stats }
    end
  end
end
