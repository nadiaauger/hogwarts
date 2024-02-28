class CreateCastles < ActiveRecord::Migration[7.1]
  def change
    create_table :castles do |t|
      t.string :name
      t.string :img

      t.timestamps
    end
  end
end
