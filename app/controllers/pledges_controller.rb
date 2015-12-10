class PledgesController < ApplicationController
  before_action :set_pledge, only: [:show, :update, :destroy]

  # GET /pledges
  # GET /pledges.json
  def index
    @pledges = Pledge.all

    render json: @pledges
  end

  # GET /pledges/1
  # GET /pledges/1.json
  def show
    render json: @pledge
  end

  # POST /pledges
  # POST /pledges.json
  def create
    @pledge = Pledge.new(pledge_params)

    if @pledge.save
      render json: @pledge, status: :created, location: @pledge
    else
      render json: @pledge.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pledges/1
  # PATCH/PUT /pledges/1.json
  def update
    @pledge = Pledge.find(params[:id])

    if @pledge.update(pledge_params)
      head :no_content
    else
      render json: @pledge.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pledges/1
  # DELETE /pledges/1.json
  def destroy
    @pledge.destroy

    head :no_content
  end

  private

    def set_pledge
      @pledge = Pledge.find(params[:id])
    end

    def pledge_params
      params.require(:pledge).permit(:user_id, :concert_id, :price)
    end
end
