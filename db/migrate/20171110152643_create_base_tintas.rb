class CreateBaseTintas < ActiveRecord::Migration[5.1]
  def change
    create_table :base_tintas do |t|
      t.string :cod
      t.text :descripcion_base

      t.timestamps
    end
  end
end
