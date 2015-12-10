class BandsController < UsersController
  # before_action :authenticate_user!

  def index
    @bands = Band.all
    render json: @bands
  end

  private

  def band_params
    params.require(:band).permit(:email, :password, :name, :genre, :location, :avatar_url)
  end
end
