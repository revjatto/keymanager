class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.string :address
      t.string :county
      t.string :postcode

      t.timestamps null: false
    end
  end
end
