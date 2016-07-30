class WorkoutLogsController < ApplicationController

  def new
    @workout_log = Workout_log.new
    @day = Day.new
  end

  def create
    @workout_log = Workout_log.find params[:id]
    day_params = params.require(:day).permit(:day_number, )
    @workout_log = Workout_log.new(workout_log_params)
    @workout_log.save
    redirect_to new_workout_log_path(@workout_log), notice: "Completed workout!"
  end

  def show
    @workout_log = Workout_log.find params[:id]
  end

end
