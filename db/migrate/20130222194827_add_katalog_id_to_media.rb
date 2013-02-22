class AddKatalogIdToMedia < ActiveRecord::Migration
  def change
    add_column :media, :katalogId, :string
  end
end
