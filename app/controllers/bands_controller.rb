class BandsController < UsersController
  # before_action :authenticate_user!

  def index
    @bands = Band.all
    render json: @bands
  end

  def destroy
    @users = User.find(params[:id])
    @users.destroy
    render json: @users, status: :success
  end


  private

  def band_params
    params.require(:band).permit(:email, :password, :name, :genre, :location)
  end
end
