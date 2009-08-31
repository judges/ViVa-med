class CreatePortfollios < ActiveRecord::Migration
  def self.up
    create_table :portfollios do |t|
      t.integer :cabinet_id
      t.time :worktime_id
      t.integer :salary
      t.integer :bonus

      t.timestamps
    end
  end

  def self.down
    drop_table :portfollios
  end
end
