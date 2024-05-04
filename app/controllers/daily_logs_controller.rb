class DailyLogsController < ApplicationController
  def index
    @daily_logs = DailyLog.all
  end

  def new
    @daily_log = DailyLog.new
  end

  def create
    @daily_log = DailyLog.new(daily_log_params)
    if @daily_log.save
      redirect_to daily_logs_path, notice: 'Daily log was successfully created.'
    else
      render :new
    end
  end

  private

  def daily_log_params
    params.require(:daily_log).permit(:date, :calories_consumed, :weight, :user_id)
  end
end
