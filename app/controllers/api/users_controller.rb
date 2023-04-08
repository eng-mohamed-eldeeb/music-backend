class Api::UsersController < ApplicationController
    respond_to :json
    protect_from_forgery with: :null_session
    def index
        users = User.all
        render json: users
      end
    def create
      user = User.new(user_params)
  
      if user.save
        render json: user, status: :created
      else
        render json: user.errors, status: :unprocessable_entity
      end
    end

  def destroy
    super do
      render json: { status: 'SUCCESS', message: 'Logged out successfully' }
      return
    end

    render json: { status: 'ERROR', message: 'Failed to log out' }
  end
  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :img_url, :is_admin)
  end
end
