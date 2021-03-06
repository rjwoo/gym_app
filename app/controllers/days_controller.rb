class DaysController < ApplicationController
  before_action :day_params, only: [:create, :update]

  DEFAULT_EXERCISE_COUNT = 3

  def new
    @program = Program.find params[:program_id]
    @day = Day.new
    DEFAULT_EXERCISE_COUNT.times { @day.exercises.build }
  end

  def create
    @program = Program.find params[:program_id]
    @day = Day.new day_params
    @day.program = @program
    if @day.save
      redirect_to program_path(@program), notice: "Workout Created!"
    else
      (DEFAULT_EXERCISE_COUNT - @day.exercises.size).times { @day.exercises.build }
      render "/days/new"
    end
  end

  def show
    @day = Day.find params[:id]
    @exercises = @day.exercises
  end

  def update
    if @day.update day_params
      redirect_to program_path(@program), notice: "Workout Created!"
    else
      render :edit
    end
  end

  def index
    @days = Day.all
  end

  def edit
    @day = Day.find params[:id]
  end

  # def destroy
  #   @day = Day.find params[:id]
  #   @day.destroy
  #   redirect_to program_path, notice: "Workout Deleted!"
  # end

  private

  def day_params
    params.require(:day).permit(:day_number, {exercises_attributes: [:exercise_name, :id, :_destroy]})
  end

end
