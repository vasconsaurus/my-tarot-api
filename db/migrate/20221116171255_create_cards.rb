# frozen_string_literal: true

class CreateCards < ActiveRecord::Migration[7.0]
  def change
    create_table :cards do |t|
      t.string :type_of_card, null: false
      t.string :name_short, null: false
      t.string :name, null: false
      t.string :value, null: false
      t.integer :value_int, null: false
      t.string :meaning_up, null: false
      t.string :meaning_rev, null: false
      t.string :card_description, null: false
      t.string :suit

      t.timestamps
    end
  end
end
