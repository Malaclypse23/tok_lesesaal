class AddSystematikToMedia < ActiveRecord::Migration
  def change
    add_column :media, :systematik, :string
  end
end
