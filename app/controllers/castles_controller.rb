class CastlesController < ApplicationController
    before_action :set_castle, only: [:show, :update]
    def show
        # @castle = Castle.find(params[:id])
        @wizzard = Wizzard.new
        @wizzards = Wizzard.all
    end

    def update
        # @castle = Castle.find(params[:id])
        @wizzard = Wizzard.new
        @castle.update(castle_params)
        redirect_to castle_path(@castle)
    end

    private

    def set_castle
        @castle = Castle.find(params[:id])
    end

    def castle_params
        params.require(:castle).permit(:name, :img)
    end
end
