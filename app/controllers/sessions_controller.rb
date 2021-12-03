# frozen_string_literal: true

class SessionsController < ApplicationController
  def new
    @user = User.new
    @users = User.all
  end

  def create
    fullname = params[:user][:fullname]
    @user = User.find_by(fullname: fullname)
    if @user.nil?
      render :new
    else
      session[:current_user_id] = @user.id
      redirect_to user_path(@user.id)
    end
  end

  def destroy
    session[:current_user_id] = nil
    redirect_to root_path
  end

  private

  def sign_in_params
    params.require(:user).permit(:fullname)
  end
end
