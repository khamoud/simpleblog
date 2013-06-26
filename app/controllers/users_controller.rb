class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def new
  	
  end

  def create
  	@user = User.new(params[:user])
  	@message = Array.new
  	if @user.save
  		flash[:success] = "User successfully registered"
  	else
  		flash[:failure] = @user.errors.full_messages
  	end
  	render :new
  end

end
