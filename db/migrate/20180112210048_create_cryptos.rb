class CreateCryptos < ActiveRecord::Migration[5.0]
  def change
    create_table :cryptos do |t|
      t.string :name
      t.integer :quantity

      t.timestamps
    end
  end
end
