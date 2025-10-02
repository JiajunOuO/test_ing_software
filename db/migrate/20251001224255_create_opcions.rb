class CreateOpcions < ActiveRecord::Migration[7.1]
  def change
    create_table :opcions do |t|
      t.string :nombre
      t.references :seccion, null: false, foreign_key: true

      t.timestamps
    end
  end
end
