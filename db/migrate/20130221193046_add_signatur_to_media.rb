class AddSignaturToMedia < ActiveRecord::Migration
  def change
    add_column :media, :signatur, :string
  end
end
