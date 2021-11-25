class ChangePriceToString < ActiveRecord::Migration[6.1]
  def change
    change_column :games, :price, :string
  end
end
