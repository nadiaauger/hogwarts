class CreateWizzards < ActiveRecord::Migration[7.1]
  def change
    create_table :wizzards do |t|
      t.string :name
      t.string :img
      t.references :castle, null: false, foreign_key: true

      t.timestamps
    end
  end
end
