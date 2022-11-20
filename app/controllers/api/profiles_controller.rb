class Api::ProfilesController < ApplicationController
    before_action :authenticate_user!
end
