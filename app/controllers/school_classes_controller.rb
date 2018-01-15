class SchoolClassesController < ApplicationController
  #INDEX
    def index
      @school_classes = SchoolClass.all
    end
  #NEW
    def new
      @school_class = SchoolClass.new
    end
  #CREATE
    def create
      @school_class = SchoolClass.create(title: params[:school_class][:title], room_number: params[:school_class][:room_number])
      #redirect_to school_class_path(@school_class)
      redirect_to @school_class
    end

  #SHOW
    def show
      @school_class = SchoolClass.find(params[:id])
    end
  #EDIT
    def edit
      @school_class = SchoolClass.find(params[:id])
    end

  #UPDATE
  def update
    @school_class = SchoolClass.find(params[:id])
    @school_class.update(title: params[:school_class][:title], room_number: params[:school_class][:room_number])
    redirect_to @school_class
  end

end
