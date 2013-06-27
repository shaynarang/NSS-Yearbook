# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'

Student.delete_all
CSV.foreach("db/students.csv") do |row|
  student_name = row[0] + " " + row[1]
  student_quote = row[2]
  student_quote_author = row[3]
  Student.create(:name => student_name, :quote => student_quote, :quote_author => student_quote_author)
end

Instructor.delete_all
CSV.foreach("db/instructors.csv") do |row|
  instructor_name = row[0] + " " + row[1]
  instructor_quote = row[2]
  instructor_quote_author = row[3]
  Instructor.create(:name => instructor_name, :quote => instructor_quote, :quote_author => instructor_quote_author)
end