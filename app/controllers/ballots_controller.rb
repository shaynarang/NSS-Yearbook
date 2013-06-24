class BallotsController < ApplicationController

  def new
    @ballot = Ballot.new
  end

  def create
    @ballot = Ballot.new(params[:ballot])
    @ballot.user_id = current_user.id

    if @ballot.save
      flash[:notice] = "Your vote has been cast!"
      redirect_to :root
    else
      flash.now[:notice] = "There was an issue. Please try again."
    end
  end
  
end