# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'

Student.delete_all
CSV.foreach("db/nss.csv") do |row|
  student_data = row.split(",")
  student_data = student_data.join(" ")
  student_data = student_data.scan(/\w+/)
  student_name = student_data[0..1].join(" ")
  Student.create(:name => student_name)
end