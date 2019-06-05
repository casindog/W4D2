class CatsController < ApplicationController
  def index
    @cats = Cat.all
    render :index
    # render json: Cat.all
  end

  def show
    @cat = Cat.find(params[:id])
    render :show
    # render json: Cat.find(params[:id])
  end

  def new
    @cat = Cat.new
    
    render :new    
  end

  # def edit
    
  # end

end