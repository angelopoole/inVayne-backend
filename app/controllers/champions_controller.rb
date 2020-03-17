class ChampionsController < ApplicationController

    def index
        @champions = Champion.all
        render json: @champions
    end


end
