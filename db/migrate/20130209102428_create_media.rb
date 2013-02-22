class CreateMedia < ActiveRecord::Migration
  def change
    create_table :media do |t|
      t.string :autor
      t.string :titel
      t.string :schlagwort
      t.boolean :vorhanden
      t.string :medienart

      t.timestamps
    end
  end
end
