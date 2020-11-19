class UsersController < ApplicationController

    def create
        user = User.create(user_params)
        payload = {user_id: user.id}
        token = JWT.encode(payload, secret, 'HS256')
        render json: {user:  user, token: token}
        # render json: user
    end

    def destroy
        user = User.find_by(id: params[:user_id])
        # byebug
        user.destroy
        render json: { success: "Woohoooo"}
    end


    private 
    def user_params
        params.permit(:username, :password)
    end
end