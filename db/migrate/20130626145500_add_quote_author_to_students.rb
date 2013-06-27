class AddQuoteAuthorToStudents < ActiveRecord::Migration
  def change
    add_column :students, :quote_author, :string
  end
end