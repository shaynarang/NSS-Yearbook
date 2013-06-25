class Ballot < ActiveRecord::Base
  belongs_to :user
  attr_accessible :user_id, :vote_one, :vote_two, :vote_three, :vote_four, :vote_five, :vote_six, :vote_seven, :vote_eight, :vote_nine, :vote_ten

  def self.winner(vote)
    winning_count = 0
    result = ""
    students = Student.all
    students.each do |student|
      vote_count = Ballot.where(vote => student.id).count
      if vote_count > winning_count
        winning_count = vote_count
        result = student
      end
    end
    #returns student object
    result
  end

end
