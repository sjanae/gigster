class PledgesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_concert
  # before_action :set_pledge

  def index
    @pledges = @concert.pledges
    render json: @pledges
  end

  def new
    @pledge = @concert.pledges.new
    render json: @pledge
  end

  def create
    @pledge = current_user.fan.pledges.create(pledge_params)
    if @pledge.save

      @concert = Concert.find(params[:concert_id])
      @concert.pledges.size > 1
      PledgeMailer.send_success(@user).deliver

    elsif @pledge.save

      @concert = Concert.find(params[:concert_id])
      @concert.pledges.size < 1
      PledgeMailer.send_unsuccess(@user).deliver
        
      # render json: @pledge, status: :ok
      
    else
      render json: @pledge.errors, status: :unprocessable_entity
    end
  end


  def show
    # @pledge = Pledge.find(params[:id])
    render json: @concert.pledges
  end

  # def email_fans
  #   if pledges.size < 1
  #     PledgeMailer.send_success(@user).deliver
  #   else
  #     PledgeMailer.send_unsuccess(@user).deliver
  # end

  # def email_bands
  #    if pledges.size < 1
  #     PledgeMailer.send_success(@user).deliver
  #   else
  #     PledgeMailer.send_unsuccess(@user).deliver
  # end



  private
    
    def set_concert
      @concert = Concert.find(params[:concert_id])
    end

    # def set_pledge
    #   @pledge = @concert.pledge.find(params[:id])
    # end

    def pledge_params
      params.require(:pledge).permit(:count)
    end

end
