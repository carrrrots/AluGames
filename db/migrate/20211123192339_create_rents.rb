class CreateRents < ActiveRecord::Migration[6.1]
  def change
    create_table :rents do |t|
      t.date :period_of_time
      t.references :user, null: false, foreign_key: true
      t.references :game, null: false, foreign_key: true

      t.timestamps
    end
  end
end
