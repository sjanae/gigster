class ConcertsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show] # guest can view the index and show actions(page)
  before_action :set_concert, only: [:show, :edit, :update, :destroy, :vote, :unvote] # concert actions based on concert id on current page
    


  def index
    @concerts = Concert.all
    render json: @concerts
  end

  def new
    @concert = Concert.new
  end

  def show
    render json: @concert
    @vote = @concert.votes_for.size
    render json: @vote
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


  def vote
    @concert.upvote_by current_user
    redirect_to :back
  end

  def unvote
    @concert.downvote_by current_user
    redirect_to :back
  end



  private

    def set_concert
      @concert = Concert.find(params[:id])
    end

    def concert_params
      params.require(:concert).permit(:band_id, :location, :venue)
    end

  end
