class ChallengesController < ApplicationController

  def index
    @challenges= Challenge.all
  end

  def new
  end

  def create
  end

  def show
    @challenge = Challenge.find(params[:id])
  end

  def edit
  end

  def update
    @challenge = Challenge.find(params[:id])
    @challenge.update(status)
    redirect_to challenges_path
  end

  def destroy
  end

  def like
    @challenge = Challenge.find(params[:id])
    @challenge.solved = !@challenge.solved
    @challenge.save

    respond_to do |format|
      format.json { render :json => {solved:@challenge.solved} }
    end
  end

end
