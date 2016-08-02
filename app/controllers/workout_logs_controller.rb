class WorkoutLogsController < ApplicationController

  def new
    @exercise = Exercise.find params[:exercise_id]
    @workout_log = WorkoutLog.new
    @workout_log.exercise = @exercise
  end

  def create
    @workout_log = WorkoutLog.new
    @workout_log.save
    redirect_to 
  end

  def show
  end

  def index
  end

end
