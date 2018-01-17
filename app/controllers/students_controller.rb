class StudentsController < ApplicationController
    #INDEX
      def index
        @students = Student.all
      end
    #NEW
      def new
        @student = Student.new
      end
    #CREATE
      def create
        @student = Student.create(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
        #redirect_to school_class_path(@student)
        redirect_to @student
      end

    #SHOW
      def show
        @student = Student.find(params[:id])
      end
    #EDIT
      def edit
        @student = Student.find(params[:id])
      end

    #UPDATE
    def update
      @student = Student.find(params[:id])
      @student.update(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
      redirect_to @student
    end

  end
