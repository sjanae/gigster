class FansController < ApplicationController
  before_action :authenticate_user!, only: [:update, :destroy]

  def index
    @fans = Fan.all
    render json: @fans
  end

  def show
    @fan = Fan.find(params[:id])
    render json: @fan
  end

  def update
    @fan = Fan.find(params[:id])
    if @fan.update(user_params)
    render json: @fan, status: :success
    else
      render json: @fan.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @fan = Fan.find(params[:id])
    @fan.destroy
    render json: @fan, status: :success
  end

  private

  def set_fan
    @fan = Fan.find(params[:id])
  end

  def fan_params
    params.require(:fan).permit(:location)
  end
end
