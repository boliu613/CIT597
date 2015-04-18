class AddLocationToColleges < ActiveRecord::Migration
  def change
  	add_column :colleges, :longitude, :string
  	add_column :colleges, :latitude, :string
  end
end
