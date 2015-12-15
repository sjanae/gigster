class BandsController < ApplicationController
  before_action :authenticate_user!, only: [:update, :destroy]

  def index
    @bands = Band.all
    render json: @bands
  end

  def show
    @band = Band.find(params[:id])
    render json: @band
  end

  def update
    @band = current_user.band
    if @band.update(band_params)
      render json: @band, status: :ok
    else
      render json: @band.errors, status: :unauthorized
    end
  end

  def destroy
    @band = current_user.band
    if @band.destroy
  else
    render json: @band.errors, status: :unauthorized
  end
end

  private

  def set_band
    @band = Band.find(params[:id])
  end

  def band_params
    params.require(:band).permit(:name, :genre, :location, :audio_url, :video_url)
  end
end
