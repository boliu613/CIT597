class User < ActiveRecord::Base
  attr_accessible :GPA, :SAT, :email, :name, :password

  validates :name, :presence => true
  validates :email, :presence => true
  validates :password, :presence => true
end