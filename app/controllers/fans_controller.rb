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
    @fan = current_user.fan
    if @fan.update(fan_params)
      render json: @fan, status: :ok
    else
      render json: @fan.errors, status: :unauthorized
    end
  end

  def destroy
    @fan = current_user.fan
    if @fan.destroy
  else
    render json: @fan.errors, status: :unauthorized
  end
end

  private

  def set_fan
    @fan = Fan.find(params[:id])
  end

  def fan_params
    params.require(:fan).permit(:location)
  end
end
