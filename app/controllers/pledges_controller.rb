# class PledgesController < ApplicationController
#   before_action :authenticate_user!
#   before_action :set_concert
#   before_action :set_pledge

#   def new
#     @pledge = @concert.pledges.build
#   end

#   def index
#     @pledges = Pledge.all
#     render json: @pledges
#   end

#   def update
#     if @pledge.update(pledge_params)
#       render :show, status: :created, location: @pledge
#     else
#       # render :edit
#       render json: @pledge.errors, status: :unprocessable_entity
#     end
#   end

#   def create
#     @pledge = current_user.fan.pledges.create(pledge_params)
#     # @concert.pledges.build(pledge_params)
#     if @pledge.save
#       render json: @pledge, status: :created, location: @pledge
#     else
#       # render :new
#       render json: @pledge.errors, status: :unprocessable_entity
    
#     end
#   end

#   def show
#     @pledge = Pledge.find(params[:id])
#     # render json: @pledge
#     # render json: @pledge
#     render json: @concert.pledges
#   end


#   def destroy
#     @pledge.destroy
#     head :no_content
#   end

#   private
    
#     def set_concert
#       @concert = Concert.find(params[:concert_id])
#     end

#     def set_pledge
#       @pledge = @concert.pledge.find(params[:id])
#     end

#     def pledge_params
#       params.require(:pledge).permit(:price)
#     end

# end
