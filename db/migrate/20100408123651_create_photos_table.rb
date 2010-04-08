class CreatePhotosTable < ActiveRecord::Migration
  def self.up   
    create_table :users, :force => true do |t|
      t.string :name
      t.text :description 
      t.integer :concert_id
      t.timestamps 
    end
  end

  def self.down
    drop_table :users
  end
end
