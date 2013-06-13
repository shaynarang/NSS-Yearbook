class AddNameAndQuoteToStudents < ActiveRecord::Migration
  def change
    add_column :students, :name, :string
    add_column :students, :quote, :string
  end
end