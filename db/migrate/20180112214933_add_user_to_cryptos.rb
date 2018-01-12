class AddUserToCryptos < ActiveRecord::Migration[5.0]
  def change
    add_reference :cryptos, :user, foreign_key: true
  end
end
