class Api::ProfilesController < ApplicationController
    before_action :authenticate_user!


    def index
    render json: User.liked_profiles(current_use)
    end

    def update

    end
end
