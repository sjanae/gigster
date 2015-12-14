class PledgesController < ApplicationController
  before_action :set_pledge, except: [:new, :create] #new and create action won't have a pledge to set from database
  before_action :authenticate_user!
  before_action :set_concert # attach pledge to the concert by concert_id before any actions

  def new
    @pledge = @concert.pledges.build
  end

  def index
    @pledges = Pledge.all
    render json: @pledges
  end

  def update
    respond_to do |format|
      if @pledge.update(pledge_params)
        redirect_to @concert
      else
        render :edit
      end
    end
  end

  def create
    @pledge = @concert.pledges.build(pledge_params)
    respond_to do |format|
    if @pledge.save
      render json: @pledge, status: :created, location: @pledge
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
      @concert = Concert.find(params[:concert_id]) # concert/concert_id/pledges
    end

    def set_pledge
      @pledge = @concert.pledges.find(params[:id]) # to find pledges id already in the database use rake routes locator
    end

    def pledge_params
      params.require(:pledge).permit(:price)
    end

end