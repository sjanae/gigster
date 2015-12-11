class BandsController < UsersController
  before_action :authenticate_user!, only: [:update, :destroy]

  def index
    if params[:q]
      @bands = Band.where("email ILIKE ?", "%#{params[:q]}%")
    else
      @bands = Band
  end
    render json: @bands
  end

  def show
    @band = Band.find(params[:id])
    render json: @band
  end

  def update
    @band = Band.find(params[:id])
    if @band.update(user_params)
    render json: @band, status: :success
    else
      render json: @band.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @band = Band.find(params[:id])
    @band.destroy
    render head :no_content
  end

  private

  def set_band
    @band = Band.find(params[:id])
  end

  def band_params
    params.require(:band).permit(:email, :password, :name, :genre, :location)
  end
end
