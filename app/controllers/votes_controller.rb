class VotesController < ApplicationController
  def index
    respond_to do |format|
      format.json {render :json => Vote.all}
    end
  end


  def create
    @vote = current_user.votes.build(params[:vote])
    @vote.save!
    respond_to do |format|
      format.json {render :json => @vote}
    end
  end
end

