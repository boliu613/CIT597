# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  password   :string(255)
#  GPA        :float
#  SAT        :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base
  attr_accessible :GPA, :SAT, :email, :name, :password

  validates :name, :presence => true
  validates :email, :presence => true
  validates :password, :presence => true
end
