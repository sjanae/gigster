class ConcertsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_concert, only: [:show, :edit, :destroy, :successful]


  def index
    @concerts = Concert.all
    render json: @concerts
  end

  def new
    @concert = Concert.new
  end

  def show
    render json: @concert
  end

  def edit

  end


  def create
    @concert = current_user.band.concerts.create(concert_params)
    if @concert.save
      render json: @concert, status: :ok
    else
      render json: @concert.errors, status: :unprocessable_entity
    end
  end

  def update
    @concert = current_user.band.concerts.find(params[:id])
    if @concert.update(concert_params)
      render json: @concert, status: :ok
    else
      render json: @concert.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @concert = current_user.band.concerts.find(params[:id])
    if @concert.destroy
      head :no_content
    else
      render json: @concert.errors, status: :unauthorized
    end
  end




  private

  def set_concert
    @concert = Concert.find(params[:id])
  end

  def concert_params
    params.require(:concert).permit(:band_id, :location, :venue, :funding_goal, :price, :performance_date, :pledge_key, :total_funds)
  end
end
