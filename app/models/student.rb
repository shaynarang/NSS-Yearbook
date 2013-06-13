class Student < ActiveRecord::Base
  validates :name, :uniqueness => true, :presence => true
  attr_accessible :name, :quote
end
