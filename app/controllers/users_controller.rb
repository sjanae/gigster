class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:update, :destroy]


  def index
    @users = User.all
   render json: @users
  end


  def show
    @user = User.find(params[:id])
    render json: @user
  end


  def create
    @user = User.create(user_params)
    if @user.save
      render json: @user, status: :created
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end


  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
    render json: @user, status: :success
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end


  def destroy
    @user = User.find(params[:id])
    @user.destroy
    render json: status: :success
  end

  private

    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name, :email, :password, :type)
    end
end
