class ProgramsController < ApplicationController
  before_action :find_program, only: [:show, :edit, :update, :destroy]
  before_action :program_params, only: [:create, :update]

  def new
    @program = Program.new
  end

  def create
    @program = Program.new(program_params)
    if @program.save
      redirect_to programs_path, notice: "You have created a new program!"
      # Upon creation of PROGRAM, should link to new DAY form  
    else
      render :new
    end
  end

  def index
    @programs = Program.all
  end

  def show
    @day = Day.new
  end

  def edit
  end

  def update
    if @program.update program_params
      redirect_to program_path(@program), notice: "Program Updated!"
    else
      render :edit
    end
  end

  def destroy
    @program.destroy
    redirect_to programs_path, notice: "Program Deleted!"
  end

  private

  def find_program
    @program = Program.find params[:id]
  end

  def program_params
    program_params = params.require(:program).permit(:program_name)
  end

end
