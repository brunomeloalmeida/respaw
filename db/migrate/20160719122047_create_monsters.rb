class CreateMonsters < ActiveRecord::Migration
  def change
    create_table :monsters do |t|
      t.string :name
      t.string :element
      t.integer :natural
      t.integer :hp_base
      t.integer :atk_base
      t.integer :def_base
      t.integer :vel_base
      t.string :cr_base
      t.string :cd_base
      t.string :res_base
      t.string :acc_base
      t.integer :hp_awake
      t.integer :atk_awake
      t.integer :def_awake
      t.integer :vel_awake
      t.string :cr_awake
      t.string :cd_awake
      t.string :res_awake
      t.string :acc_awake
      t.integer :high_essence_elemental
      t.integer :mid_essence_elemental
      t.integer :low_essence_elemental
      t.integer :high_essence_magic
      t.integer :mid_essence_magic
      t.integer :low_essence_magic
      t.string :runes

      t.timestamps null: false
    end
  end
end
