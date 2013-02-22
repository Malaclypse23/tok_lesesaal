class AddIsbnToMedia < ActiveRecord::Migration
  def change
    add_column :media, :isbn, :string
  end
end
