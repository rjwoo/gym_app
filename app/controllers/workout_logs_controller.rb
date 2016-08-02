class WorkoutLogsController < ApplicationController
  before_action :workout_log_params, only: [:create]

  DEFAULT_SET_COUNT = 1

  def new
    @day = Day.find params[:day_id]
    @workout_log = WorkoutLog.new
    @workout_log.day = @day
  end

  def create
    # @workout_log = WorkoutLog.find params[:id]
    @day = Day.find params[:day_id]
    @workout_log = WorkoutLog.new(workout_log_params)
    @workout_log.day = @day
    if @workout_log.save
      redirect_to day_workout_log_path(@day, @workout_log), notice: "Completed workout!"
    else
      render "/workout_logs/new"
    end
  end

  def show
    @workout_log = WorkoutLog.find params[:id]
  end

  private

  def workout_log_params
    params.require(:workout_log).permit(:reps, :weight, {exercises_attributes: [:exercise_name, :reps, :weight, :id, :_destroy]})
  end

end
