class CreateWatches < ActiveRecord::Migration[7.1]
  def change
    create_table :watches do |t|
      t.string :brand
      t.boolean :status, default: true
      t.string :model
      t.string :url
      t.text :description
      t.integer :year
      t.float :price_per_day
      t.datetime :available_from
      t.datetime :available_until
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
