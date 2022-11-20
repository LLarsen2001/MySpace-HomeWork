class Api::UsersController < ApplicationController
  before_action :set_user, only: [:update, :destroy]
  def update
    if(@user.update(params.permit(:password, :email, :name)))
        render json: @user
    else 
        render json: @user.errors.full_message, status: 422
    end
  end

  def destroy
    render json: @user.destroy
  end

  
  private
  def set_user
    @user = User.find(params[:id])
  end
end
