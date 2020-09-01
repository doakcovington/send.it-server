class Api::V1::SessionsController < ApplicationController
    def create
        @user = User.find_by(username: params[:session][:username])
        if @user && @user.authenticate(params[:session][:password])
            session[:user_id] = @user.id 
            render json: @user
        else
            render json: {
                error: "Incorret username and/or password"
            }
        end
    end

    def destroy
        session.clear
        render json: {
            notice: 'You have been logged out'
        }, status: :ok
    end

    def get_current_user
        if logged_in?
            render json: UserSerializer.new(current_user) #only shows id, type, username, email
        else
            render json: {
                error: "Not logged in"
            }
        end
    end
end
