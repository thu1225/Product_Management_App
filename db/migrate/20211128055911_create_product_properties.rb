class CreateProductProperties < ActiveRecord::Migration[6.1]
  def change
    create_table :product_properties do |t|
      t.string :version
      t.string :imageproduct_url
      t.string :in_stock
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
