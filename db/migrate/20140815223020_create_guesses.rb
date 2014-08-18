class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do |t|
      t.boolean :correctness
      t.integer :round_id
      t.integer :card_id

      t.timestamps
    end
    add_index :guesses, [:round_id, :card_id]
  end
end
