class ExercisesController < ApplicationController
  before_action :find_exercise, only: [:show, :edit, :update, :destroy]
  before_action :exercise_params, only: [:create, :update]

  def new
    @exercise = Exercise.new
  end

  def create
    @day = Day.find params[:day_id]
    @program = @day.program
    @exercise = Exercise.new exercise_params
    @exercise.day = @day
    if @exercise.save
      redirect_to program_day_path(@program, @day), notice: "Exercises Added!"
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @exercise.update exercise_params
      redirect_to exercise_path(@exercise), notice: "Exercise Updated!"
    else
      render :edit
    end
  end

  def destroy
    @exercise.destroy
    redirect_to exercises_path, notice: "Exercise Deleted!"
  end

  private

  def find_exercise
    @exercise = Exercise.find params[:id]
  end

  def exercise_params
    exercise_params = params.require(:exercise).permit(:exercise_name, :sets)
  end

end
