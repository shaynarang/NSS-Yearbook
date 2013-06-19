class Instructor < ActiveRecord::Base
  validates :name, :uniqueness => true, :presence => true
  attr_accessible :name, :quote

  def self.search(search)
    find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
  end
end
