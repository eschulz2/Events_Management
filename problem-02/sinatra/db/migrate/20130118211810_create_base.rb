class CreateBase < ActiveRecord::Migration
  def change
    create_table :users do |table|
      table.string :email, :null => false
      table.string :password, :null => false
    end

    create_table :comments do |table|
      table.integer :user_id, :null => false
      table.string  :body, :null => false
    end
  end
end
