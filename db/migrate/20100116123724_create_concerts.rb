class CreateConcerts < ActiveRecord::Migration
  def self.up
    create_table :concerts do |t|
      t.string :name
      t.text :info
      t.decimal :price, :precision => 6, :scale => 2
      t.integer :club_id
      t.timestamps
    end
  end

  def self.down
    drop_table :concerts
  end
end
