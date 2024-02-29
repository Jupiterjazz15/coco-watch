class RemovelocationFromTableName < ActiveRecord::Migration[7.1]
  def change
    remove_column :watches, :location, :string
  end
end
