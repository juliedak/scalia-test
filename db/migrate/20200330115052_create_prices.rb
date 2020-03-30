class CreatePrices < ActiveRecord::Migration[6.0]
  def change
    create_table :prices do |t|
      t.string :currency
      t.integer :value
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
