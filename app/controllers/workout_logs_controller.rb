class WorkoutLogsController < ApplicationController

  def new
    @day = Day.find params[:day_id]
    @workout_log = WorkoutLog.new
    @workout_log.day = @day
  end

  def create
    @workout_log = WorkoutLog.find params[:id]
    day_params = params.require(:day).permit(:day_number, )
    @workout_log = WorkoutLog.new(workout_log_params)
    @workout_log.save
    redirect_to new_workout_log_path(@workout_log), notice: "Completed workout!"
  end

  def show
    @workout_log = WorkoutLog.find params[:id]
  end

end
