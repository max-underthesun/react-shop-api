class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title, null: false
      t.money :price, default: 0, null: false

      t.timestamps
    end
  end
end
