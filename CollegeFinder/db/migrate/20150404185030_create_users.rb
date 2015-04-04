class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.float :GPA
      t.float :SAT

      t.timestamps
    end
  end
end
