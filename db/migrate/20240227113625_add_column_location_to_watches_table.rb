class AddColumnLocationToWatchesTable < ActiveRecord::Migration[7.1]
  def change
    add_column :watches, :location, :string
  end
end
