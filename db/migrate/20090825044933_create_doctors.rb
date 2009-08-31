class CreateDoctors < ActiveRecord::Migration
  def self.up
    create_table :doctors do |t|
      t.string :firstname
      t.string :lastname
      t.string :initials
      t.date   :birthdate
      t.integer :proffesion_id
      t.integer :portfollio_id

      t.timestamps
    end
  end

  def self.down
    drop_table :doctors
  end
end
