class CreateBase < ActiveRecord::Migration
  def change
    create_table :comments do |table|
      table.string  :body, :null => false
    end
  end
end
