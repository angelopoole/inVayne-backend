class UserChampionsController < ApplicationController

    def create
        # byebug
        @userChampions = UserChampion.create(user_id: params[:user_id], champion_id: params[:champion_id])
        render json: @userChampions
    end

end
