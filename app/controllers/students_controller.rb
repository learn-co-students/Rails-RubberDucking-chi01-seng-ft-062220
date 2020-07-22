class StudentsController < ApplicationController
  before_action :find_student, only: [:show, :edit, :update]
  def index
    @students = Student.all
  end

  def show

  end
  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to @student
    else
      render :new
    end
  end

  def edit
  end

  def update
    @student.update(student_params)
    if @student.valid?
      redirect_to @student
    else
      render :edit
    end
  end

  private

  def find_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:name, :mod)
  end
end
