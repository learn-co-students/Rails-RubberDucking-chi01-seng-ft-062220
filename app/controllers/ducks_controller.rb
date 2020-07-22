class DucksController < ApplicationController
  before_action :find_duck, only: [:show, :edit, :update]

  def index
    @ducks = Duck.all
  end

  def show
  end

  def new
    @duck = Duck.new
  end

  def create
    @duck = Duck.new(student_params)
    if @duck.save
      redirect_to @duck
    else
      render :new
    end
  end

  def edit
  end

  def update
    @duck.update(student_params)
    if @duck.valid?
      redirect_to @duck
    else
      render :edit
    end
  end


  private

  def find_duck
    @duck = Duck.find(params[:id])
  end

  def student_params
    params.require(:duck).permit(:name, :description, :student_id)
  end

end
