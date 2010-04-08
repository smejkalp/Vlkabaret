class CreatePhotoTable < ActiveRecord::Migration
  def self.up
    create_table :photos, :force => true do |t|
      t.string :name
      t.text :description
      t.integer :concert_id
      t.timestamps
    end
  end

  def self.down
    drop_table :photos
  end
end
