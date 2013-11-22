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
  	@cars = Car.paginate(page: params[:page])
  end

  def show
  	@car = Car.find(params[:id])
  end

  def edit
  	@car = Car.find(params[:id])
  end

  def update
  	@car = Car.find(params[:id])
  	if @car.update_attributes(params[:car])
      #@user.update_attribute(:member_type, params[:user][:member_type])
  		flash[:success] = "Updated!"
  		redirect_to @car
  	else
  		render 'edit'
  	end
  end

  def destroy
  	Car.find(params[:id]).destroy
    flash[:success] = "Car removed!"
    redirect_to cars_path
  end

end
