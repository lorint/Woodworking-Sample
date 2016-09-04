class CreateItemOptions < ActiveRecord::Migration[5.0]
  def change
    create_table :item_options do |t|
      t.references :item, foreign_key: true
      t.references :option, foreign_key: true

      t.timestamps
    end
  end
end
