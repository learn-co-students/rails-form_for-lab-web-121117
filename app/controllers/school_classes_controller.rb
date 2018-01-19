class SchoolClassesController < ApplicationController


  def index
    @schoolclasses = SchoolClass.all
  end

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    # byebug
    @school_class = SchoolClass.create(school_class_params)
    redirect_to @school_class
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def update
    @school_class = SchoolClass.find(params[:id])
    @school_class.update(school_class_params)
    redirect_to @school_class
  end

private

  def school_class_params
    params.require(:school_class).permit(:title, :room_number)
  end
  #
  # {"school_class"=>{"title"=>"Computer Science", "room_number"=>"5"}, "controller"=>"school_classes", "action"=>"create"}

end
