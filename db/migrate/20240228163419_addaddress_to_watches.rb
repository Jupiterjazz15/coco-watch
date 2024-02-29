class AddaddressToWatches < ActiveRecord::Migration[7.1]
  def change
    add_column :watches, :address, :string
  end
end
