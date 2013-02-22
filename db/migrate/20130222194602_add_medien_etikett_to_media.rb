class AddMedienEtikettToMedia < ActiveRecord::Migration
  def change
    add_column :media, :medienEtikett, :string
  end
end
