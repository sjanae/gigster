class PledgesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_concert

  def index
    pledges = Pledge.all
    render json: @concert.pledges
  end

  def new
    @pledge = @concert.pledges.new
    render json: @pledge
  end

  def create
      @pledge = current_user.fan.pledges.build(pledge_params)
      @pledge.concert_id = @concert.id
      @pledge.fan_id = current_user.fan.id
      if @pledge.save
        render json: @pledge, status: :ok

        @concert = Concert.find(params[:concert_id])
        if @concert.total_funds > @concert.funding_goal
          PledgeMailer.send_success(@pledge).deliver
        end
      else
        render json: @pledge.errors, status: :unprocessable_entity
      end
    end


  def show
    render json: @concert.pledges
  end



  private

  def set_concert
    @concert = Concert.find(params[:concert_id])
  end

  def pledge_params
    params.require(:pledge).permit(:quantity)
  end

end
