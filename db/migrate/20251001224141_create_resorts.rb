class CreateResorts < ActiveRecord::Migration[7.1]
  def change
    create_table :resorts do |t|
      t.string :nombre
      t.string :ubicacion

      t.timestamps
    end
  end
end
