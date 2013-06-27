class AddQuoteAuthorToInstructors < ActiveRecord::Migration
  def change
    add_column :instructors, :quote_author, :string
  end
end