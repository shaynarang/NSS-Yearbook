class CreateBallots < ActiveRecord::Migration
  def change
    create_table :ballots do |t|
      t.integer :vote_one
      t.integer :vote_two
      t.integer :vote_three
      t.integer :vote_four
      t.integer :vote_five
      t.integer :vote_six
      t.integer :vote_seven
      t.integer :vote_eight
      t.integer :vote_nine
      t.integer :vote_ten
      t.timestamps
    end
  end
end
