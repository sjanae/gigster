class PledgesController < ApplicationController
  # before_action :set_pledge, only: [:show, :update, :destroy]
  before_action :authenticate_user!
  before_action :set_concert

  def new
    @pledge = @concert.pledges.build(pledge_params)
  end

  def index
    @pledges = Pledge.all

    render json: @pledges
  end

  def update
    
  end

  def create
    @pledge = @concert.pledges.build(pledge_params)
    respond_to do |format|
    if @pledge.save

    else
      render :new
      end
    end
  end

  
  def show
    render json: @pledge
  end


  def destroy
    @pledge.destroy

    head :no_content
  end

  private
    
    def set_concert
      @concert = Concert.find(params[:concert_id])
    end

    def pledge_params
      params.require(:pledge).permit(:concert_id, :price,)
    end

end