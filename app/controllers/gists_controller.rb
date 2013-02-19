class GistsController < ApplicationController
  def index
    u = User.find_by_session_token(cookies[:session_token])
    @gists = u.gists
    unless @gists
      @gists = []
    end
  end

  def show
    @gist = Gist.find(params[:id])
    @has = current_user.favorites.find_by_gist_id(@gist)
  end

  def new
    @gist = Gist.new
    3.times { @gist.gistfiles.build }
  end

  def create
    @gist = current_user.gists.build(params[:gist])

    if @gist.save!
      redirect_to gists_path
    else
      render 'new'
    end
  end
end
