class FavoritesController < ApplicationController
  def create
    @favorite = Favorite.create!(:user_id => current_user.id, :gist_id => params[:gist_id])
    redirect_to new_session_path
  end

  def destroy
    @favorite = Favorite.where(:gist_id => params[:gist_id], :user_id => current_user.id)
    @favorite[0].destroy
    redirect_to gists_path
  end

  def index
  end

end
