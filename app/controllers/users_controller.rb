class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
   render json: @users
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])
    render json: @user
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.create(user_params)
    if @user.save
      render json: @user, status: :created
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
    render json: @user, status: :success
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy

    head :no_content
  end

  private

    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name, :email, :password, :type)
    end
end
