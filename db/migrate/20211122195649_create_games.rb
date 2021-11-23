class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :name
      t.string :category
      t.integer :price
      t.integer :number_of_players
      t.text :description
      t.boolean :available
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end