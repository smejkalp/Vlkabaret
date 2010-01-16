class CreateNews < ActiveRecord::Migration
  def self.up
    create_table :news do |t|
      t.string :header
      t.text :body
      t.datetime :valid_from
      t.datetime :valid_until
      t.timestamps
    end
  end

  def self.down
    drop_table :news
  end
end
