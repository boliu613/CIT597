class AddAdmwebToColleges < ActiveRecord::Migration
  def change
    add_column :colleges, :admweb, :string
  end
end
