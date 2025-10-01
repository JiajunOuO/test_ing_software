class CreateReservas < ActiveRecord::Migration[7.1]
  def change
    create_table :reservas do |t|
      t.date :fecha
      t.string :estado
      t.integer :usuario_id
      t.references :opcion, null: false, foreign_key: true

      t.timestamps
    end
  end
end
