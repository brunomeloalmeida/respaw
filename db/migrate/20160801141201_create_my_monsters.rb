class CreateMyMonsters < ActiveRecord::Migration
  def change
    create_table :my_monsters do |t|
      t.references :monster, index: true, foreign_key: true
      t.references :summoner, index: true, foreign_key: true
      t.integer :level
      t.integer :hp_base
      t.integer :hp_rune
      t.integer :atk_base
      t.integer :atk_rune
      t.integer :def_base
      t.integer :def_rune
      t.integer :vel_base
      t.integer :vel_rune
      t.string :cr
      t.string :cd
      t.string :res
      t.string :acc
      t.string :runes

      t.timestamps null: false
    end
  end
end
