class ChangeGameAvailableToTrue < ActiveRecord::Migration[6.1]
  def change
    change_column :games, :available, :boolean, deafult: "true"
  end
end
