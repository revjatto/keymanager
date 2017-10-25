class CreateKeylogs < ActiveRecord::Migration
  def change
    create_table :keylogs do |t|
      t.string :key_number
      t.string :building
      t.string :floor
      t.string :room_number
      t.string :key_type
      t.string :key_ref
      t.string :description
      t.string :key_holder
      t.string :information
      t.string :key_with

      t.timestamps null: false
    end
  end
end
