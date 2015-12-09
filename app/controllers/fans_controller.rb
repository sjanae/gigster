class FansController < UsersController
  # before_action :authenticate_user!

  def index
    @fans = Fan.all
    render json: @fans
  end


  private

  def fan_params
    params.require(:fan).permit(:email, :password, :location, :avatar)
  end
end