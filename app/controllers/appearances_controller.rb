class AppearancesController < ApplicationController
   
    
    def new
        @appearance = Appearance.new
        @guests = Guest.all 
        @episodes = Episode.all 

    end

    def create
        @appearance = Appearance.create(appearance_strong_params)

        redirect_to episode_path(@appearance.episode_id)
    end




    private

    def appearance_strong_params
        params.require(:appearance).permit(:episode_id, :guest_id, :rating)
    end

end