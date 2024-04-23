# frozen_string_literal: true

class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.references :lesson, null: false, foreign_key: true
      t.string :price_id

      t.timestamps
    end
  end
end
