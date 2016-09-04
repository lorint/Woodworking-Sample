class AddTypeToOption < ActiveRecord::Migration[5.0]
  def change
    add_column :options, :type, :string
    add_column :options, :varnish, :string
    add_column :options, :stitching, :string
  end
end
