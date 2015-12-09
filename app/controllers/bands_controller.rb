class BandsController < UsersController
  # before_action :authenticate_user!

  def index
    @bands = Band.all
   render json: @bands
  end

  # def create
  #   band = User.create { |u| u.profile = Band.create}
  #   session[:user_id] = band.id
  # end

  private

  def band_params
    params.require(:band).permit(:email, :password, :name, :genre, :location, :avatar_url)
  end
end
