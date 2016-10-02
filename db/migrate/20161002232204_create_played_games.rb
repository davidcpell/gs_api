class CreatePlayedGames < ActiveRecord::Migration[5.0]
  def change
    create_table :played_games do |t|
      t.references :user, foreign_key: true
      t.references :game, foreign_key: true
      t.references :level, foreign_key: true
      t.integer :score
      t.boolean :win

      t.timestamps
    end
  end
end
