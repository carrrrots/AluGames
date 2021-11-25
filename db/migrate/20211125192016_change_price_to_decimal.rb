class ChangePriceToDecimal < ActiveRecord::Migration[6.1]
  def change
    change_column :games, :price, :decimal
  end
end
