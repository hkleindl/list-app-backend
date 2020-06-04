class Api::V1::SessionsController < ApplicationController
    def create
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            render json: @user
        else
            render json: {
                error: "Invalid Credentials"
            }
        end    
    end

    def get_current_user
        if logged_in?
            render json: current_user
        else
            render json: {
                notice: "Not logged in"
            }
        end
    end

    def destroy
        session.clear
        render json: {
            notice: "Logged out"
        }
    end
end
