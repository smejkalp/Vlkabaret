class CreateClubs < ActiveRecord::Migration
  def self.up
    create_table :clubs do |t|
      t.string :name
      t.string :www
      t.string :phone
      t.string :email
      t.text :address
      t.text :info
      t.string :map_link
      t.timestamps
    end
  end

  def self.down
    drop_table :clubs
  end
end
