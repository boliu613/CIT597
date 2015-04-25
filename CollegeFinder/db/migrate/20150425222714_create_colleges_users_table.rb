class CreateCollegesUsersTable < ActiveRecord::Migration
  def up
    create_table :colleges_users, :id => false do |t|
      t.references :college
      t.references :user
    end

  
    add_index :colleges_users, [:college_id, :user_id]
    add_index :colleges_users, :user_id
  end
  
  def down
    drop_table :colleges_users
  end
end
