class Api::V1::SessionsController < ApplicationController

  def create
    @user = User.find_by(email: params[:session][:email])
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      render json: UserSerializer.new(@user).to_serialized_json, status: 200
    else
      render json: {
        error: "Invalid Credentials"
      }
    end
  end

  def get_current_user
    puts ENV["FRONT_END_URL"]
    if logged_in?
      render json: UserSerializer.new(current_user).to_serialized_json, status: 200
      # render json: current_user
    # else
    #   render json: {
    #     notice: "No one logged in"
    #   }
    end
  end

  def destroy
    session.clear
    render json: {
      notice: "Successfully logged out"
    }
  end

end
