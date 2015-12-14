class ConcertsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show] # guest can view the index and show actions(page)
  before_action :set_concert, only: [:show, :edit, :update, :destroy] # concert actions based on concert id on current page


  def index
    @concerts = Concert.all
    render json: @concerts
  end

  def new
    @concert = Concert.new
  end

  def show
    # render json: @concert
    @pledges = @concert.pledges
  end

  def edit
  end


  def create
    @concert = current_user.concerts.build(concert_params)
    respond_to do |format|
      if @concert.save
        render json: @concert, status: :created, location: @concert
      else
        render json: @concert.errors, status: :unprocessable_entity
      end
    end
  end


  def update
    respond_to do |format|

    if @concert.update(concert_params)
      render :show, status: :created, location: @concert
    else
      render json: @concert.errors, status: :unprocessable_entity
      end
    end
  end


  def destroy
    @concert.destroy
    head :no_content
  end

  private

    def set_concert
      @concert = Concert.find(params[:id])
    end

    def concert_params
      params.require(:concert).permit(:location, :venue, :success)
    end
end
