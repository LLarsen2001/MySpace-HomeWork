class Api::ProfilesController < ApplicationController
    before_action :authenticate_user!


    def index
    render json: User.unfollowed_profiles(current_user.followed_profiles)
    end

    def update
        current_user.followed_profiles.push(params[:id])
        current_user.save
        render json: currenr__user
    end

    def my_profiles
        render json: User.followed_profiles(currenr__user.followed_profiles)
    end
end
