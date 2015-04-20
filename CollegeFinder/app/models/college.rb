# == Schema Information
#
# Table name: colleges
#
#  id            :integer          not null, primary key
#  u_id          :integer
#  inst_name     :string(255)
#  year          :integer
#  tuition_fees  :integer
#  state         :string(255)
#  region        :string(255)
#  control       :string(255)
#  urbanization  :string(255)
#  total_enroll  :integer
#  under_enroll  :integer
#  grad_enroll   :integer
#  stu_fac_ratio :integer
#  app_total     :integer
#  adm_total     :integer
#  enroll_total  :integer
#  per_adm       :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  website       :string(255)
#  admweb        :string(255)
#  longitude     :string(255)
#  latitude      :string(255)
#

class College < ActiveRecord::Base
  attr_accessible :longitude,:latitude,:website,:admweb,:adm_total, :app_total, :control, :enroll_total, :grad_enroll, :inst_name, :per_adm, :state, :stu_fac_ratio, :total_enroll, :tuition_fees, :u_id, :under_enroll, :urbanization

  belongs_to :user
require 'csv'

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|

      college_hash = row.to_hash 
      college = College.where(id: college_hash["id"])

      if college.count == 1
        college.first.update_attributes(college_hash)
      else
        College.create!(college_hash)
      end # end if !college.nil?
    end # end CSV.foreach
  end # end self.import(file)
end
