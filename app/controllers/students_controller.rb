class StudentsController < ApplicationController


  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    # byebug
    @student = Student.create(student_params)
    redirect_to @student
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params)
    redirect_to @student
  end

private

  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end

  # "student"=>{"first_name"=>"Anna", "last_name"=>"banana"},

end
