class ConcertsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_concert, only: [:show, :edit, :update, :destroy, :successful]


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
    @concert = current_user.band.concerts.create(concert_params)
    if @concert.update(concert_params)
      render json: @concert, status: :ok
    else
      render json: @concert.errors, status: :unprocessable_entity
    end
  end

  def destroy
    authorize @concert
    @concert.destroy
    head :no_content
  end

  def successful
    if @concert.pledges.size > 1
      return true
    else
      return false
    end
  end



  private

    def set_concert
      @concert = Concert.find(params[:id])
    end

    def concert_params
      params.require(:concert).permit(:band_id, :location, :venue)
    end

  end
