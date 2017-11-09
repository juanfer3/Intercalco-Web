class CreateLineasUv < ActiveRecord::Migration[5.1]
  def change
    create_table :lineas_uv do |t|
      t.string :tipo_de_linea
      t.string :caracteristica

      t.timestamps
    end
  end
end
