class CarsController < ApplicationController
  
  NEW_CAR = -1

  def new
  	@car = Car.new
  end

  def create
  	@car = Car.new(params[:car])
  	if @car.save
  		flash[:success] = 'Successfully created car!'
  		redirect_to @car
  	else
  		render 'new'
  	end
  end

  def index
  	@car = Car.all
  end

  def show
  	@car = Car.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
