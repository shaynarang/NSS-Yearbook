class AddUserIdToBallots < ActiveRecord::Migration
  def change
    add_column :ballots, :user_id, :integer
  end
end