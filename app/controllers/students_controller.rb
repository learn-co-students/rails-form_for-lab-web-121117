class StudentsController < ApplicationController


  def index
    @students = Student.all
  end

  def show
    @student = Student.find_by(id: params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    student = Student.create(first_name: params[:student][:first_name], last_name: params[:student][:last_name])

    redirect_to student
  end

  def edit
    @student = Student.find_by(id: params[:id])
  end

  def update
    @student = Student.find_by(id: params[:id])
    @student.update(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
    redirect_to @student
  end

  def destroy
    @student = Student.find_by(id: params[:id])
    @student.destoy
    redirect student_path
  end

end
