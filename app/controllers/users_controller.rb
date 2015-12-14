class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:update, :destroy]


  def index
    @users = User.all
    render json: @users
  end

  def edit

  end

  def new
    @user = User.new
  end


  def show
    @user = User.find(params[:id])
    render json: @user
  end


  def create
    @user = User.create(user_params)
    if @user.type == "Band"
      band = Band.new(band_params)
      band.user = @user
      band.save
    elsif @user.type == "Fan"
      fan = Fan.new(fan_params)
      fan.user = @user
      fan.save
    end
    render json: @user, status: :created
  end


  def update
    @user = current_user
    if @user.update(user_params)
      render json: @user, status: :success
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end


  def destroy
    @user = User.find(params[:id])
    @user.destroy
    render head :no_content
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email, :password, :type)
  end


  def band_params
    params.require(:user).permit(:name, :genre, :location)
  end

  def fan_params
    params.require(:user).permit(:location)
  end
end
