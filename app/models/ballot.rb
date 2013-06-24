class Ballot < ActiveRecord::Base
  belongs_to :user
  attr_accessible :user_id, :vote_one, :vote_two, :vote_three, :vote_four, :vote_five, :vote_six, :vote_seven, :vote_eight, :vote_nine, :vote_ten
end
