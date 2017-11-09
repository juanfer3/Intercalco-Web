class CreateFormulaTintas < ActiveRecord::Migration[5.1]
  def change
    create_table :formula_tintas do |t|
      t.references :tinta, foreign_key: true
      t.integer :tinta_base
      t.text :descripcion
      t.float :cantidad

      t.timestamps
    end
  end
end
