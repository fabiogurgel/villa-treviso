class CreateAreaComuns < ActiveRecord::Migration[5.0]
  def change
    create_table :area_comuns do |t|
      t.integer :codigo
      t.string :descricao
      t.string :localizacao
      t.integer :quantidade_reserva
      t.references :tipo_area_comum, foreign_key: true

      t.timestamps
    end
  end
end
