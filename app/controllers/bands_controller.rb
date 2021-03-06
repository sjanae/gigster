class BandsController < ApplicationController
  before_action :authenticate_user!, only: [:update, :destroy]
  before_action :set_band, only: [:show, :edit, :destroy]


  def index
    @bands = Band.where(public: true)
    render json: @bands
  end

  def show
    render json: @band
  end

  def update
    band = Band.find(current_user.band_id)
    if band.update(band_params)
      render json: band, status: :ok
    else
      render json: band.errors, status: :unprocessable_entity
    end
  end

  def destroy
    if @band.destroy
      head :no_content
    else
      render json: @band.errors, status: :unauthorized
    end
  end

  def fanship
    @band.liked_by current_user
    redirect_to :back
  end
  
  def unfanship
    @band.unliked_by current_user
    redirect_to :back
  end

  private

  def set_band
    @band = Band.find(params[:id])
  end

  def band_params
    params.require(:band).permit(:name, :genre, :location, :audio_url, :video_url, :public, :avatar_url)
  end
end
