class BallotsController < ApplicationController

  def new
    @ballot = Ballot.new
  end

  def create
    @user = User.find(params[:user_id])
    @ballot = @user.ballot.create(params[:ballot])
  end
  
end