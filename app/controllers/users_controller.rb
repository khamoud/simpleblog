class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def create
  	@user = User.new(params[:user])
  	@message = Array.new
  	if @user.save
  		flash[:success] = "User successfully registered"
  		redirect_to @user
  	else
  		flash[:failure] = @user.errors.full_messages
  		render :new
  	end
  	
  end

  def new
  	@user = User.new
  end

  def edit
  	@user = User.find(params[:id])
  end

  def show
  	@user = User.find(params[:id])
  end

  def update
  	@user = User.find(params[:id])
  	if @user.update_attributes(params[:id])
      @user.update_attributes(params[:id])
  		redirect_to @user
  	else
  		render :edit
  	end
  end

  def destroy
  	@user = User.find(params[:id])
  	@user.destroy
  	redirect_to '/users/'
  end
end
