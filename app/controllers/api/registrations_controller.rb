class Api::RegistrationsController < Devise::RegistrationsController
    respond_to :json
    skip_before_action :verify_authenticity_token
    def create
      build_resource(sign_up_params)
  
      if resource.save
        render json: resource
      else
        render json: resource.errors, status: :unprocessable_entity
      end
    end
  
    private
  
    def sign_up_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation, :img_url, :is_admin)
    end
  end
  