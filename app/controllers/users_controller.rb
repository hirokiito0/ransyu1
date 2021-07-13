class UsersController < ApplicationController
  def show
    @users = User.find_by(params[:id])

  end

  def index
    @user = User.all
    @users = User.find_by(params[:id])
  end
  
  def new
    @user = User.new
  end
  
  def create
    
  end
  
  def edit
  end
end
