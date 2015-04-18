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

require 'test_helper'

class CollegeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
