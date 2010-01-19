class AddDateAndTimeToConcert < ActiveRecord::Migration
  def self.up
    add_column :concerts, :date, :date
    add_column :concerts, :start_time, :time
    add_column :concerts, :end_time, :time
  end

  def self.down
    remove_column :concerts, :end_time
    remove_column :concerts, :start_time
    remove_column :concerts, :date
  end
end
