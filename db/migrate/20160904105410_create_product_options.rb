class CreateProductOptions < ActiveRecord::Migration[5.0]
  def change
    create_table :product_options do |t|
      t.belongs_to :product, foreign_key: true
      t.references :option, foreign_key: true
      t.integer :cost

      t.timestamps
    end
  end
end
