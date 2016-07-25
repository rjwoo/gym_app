class DaysController < ApplicationController
  # before_action :day_params only: [:create]

  DEFAULT_EXERCISE_COUNT = 1

  def new
    @day = Day.new
    DEFAULT_EXERCISE_COUNT.times { @day.exercises.build }
  end

  def create
    @program = Program.find params[:program_id]
    @day = Day.new day_params
    @day.program = @program
    if @day.save
      redirect_to program_path(@program), notice: "Empty Workout Created!"
    else
      render "/programs/show"
    end
  end

  def show
    @day = Day.find params[:id]
  end

  private

  def day_params
    day_params = params.require(:day).permit(:day_number, {exercises_attributes: [:exercise_name, :sets, :id, :_destroy]})
  end

end
