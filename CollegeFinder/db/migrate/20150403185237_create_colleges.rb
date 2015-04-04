class CreateColleges < ActiveRecord::Migration
  def change
    create_table :colleges do |t|
      t.integer :u_id
      t.string :inst_name
      t.integer :year
      t.integer :tuition_fees
      t.string :state
      t.string :region
      t.string :control
      t.string :urbanization
      t.integer :total_enroll
      t.integer :under_enroll
      t.integer :grad_enroll
      t.integer :stu_fac_ratio
      t.integer :app_total
      t.integer :adm_total
      t.integer :enroll_total
      t.integer :per_adm

      t.timestamps
    end
  end
end
