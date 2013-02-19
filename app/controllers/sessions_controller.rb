class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by_username(params[:user][:username])

    if @user
      @user.session_token = SecureRandom.uuid
      @user.save
      cookies[:session_token] = @user.session_token
      redirect_to gists_path
    else
      render 'new'
    end
  end

  def destroy
    @user.session_token = nil
    @user.save!

    cookie[:session_token] = nil
    redirect_to 'new'
  end
end
