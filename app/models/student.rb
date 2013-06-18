class Student < ActiveRecord::Base
  validates :name, :uniqueness => true, :presence => true
  attr_accessible :name, :quote

  def self.search(search)
    if search
      find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end
end
