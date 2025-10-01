class CreateSeccions < ActiveRecord::Migration[7.1]
  def change
    create_table :seccions do |t|
      t.string :nombre
      t.string :descripcion
      t.references :resort, null: false, foreign_key: true

      t.timestamps
    end
  end
end
