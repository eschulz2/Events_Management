class CreateBase < ActiveRecord::Migration
  def change
    create_table :comments do |table|
      table.string  :body, :null => false
      table.timestamps
    end
  end
end
