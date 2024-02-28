class WizzardsController < ApplicationController
    before_action :set_castle, only: %i[create]


    def create
        @wizzard = Wizzard.new(wizzard_params)
        @wizzard.castle = @castle
        if @wizzard.save
            redirect_to castle_wizzards_path(@castle)
        else
            render :new, status: :unprocessable_entity
        end
    end

    def destroy
        @wizzard = Wizzard.find(params[:id])
        @castle = @wizzard.castle
        @wizzard.destroy
        redirect_to castle_path(@castle), status: :see_other
    end

    private

    def set_castle
        @castle = Castle.find(params[:castle_id])
    end


    def wizzard_params
        params.require(:wizzard).permit(:name, :img)
    end
end
