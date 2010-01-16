class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users, :force => true do |t|
      t.string :firstName
      t.string :lastName
      t.string :login
      t.string :email
      t.string :password
      t.text :info
      t.integer :role_id
      t.timestamps
    end
  end

  def self.down
    drop_table :user
  end
end
