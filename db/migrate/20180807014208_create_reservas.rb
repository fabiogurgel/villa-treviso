class CreateReservas < ActiveRecord::Migration[5.0]
  def change
    create_table :reservas do |t|
      t.integer :codigo
      t.date :data_reserva
      t.date :data_solicitacao
      t.references :area_comuns, foreign_key: true
      t.integer :usuario_reserva_id
      t.integer :usuario_liberador_id
      t.references :situacao_reserva, foreign_key: true
      t.text :observacao
      t.references :periodo_reserva, foreign_key: true
      t.text :obervacao_liberador

      t.timestamps
    end
  end
end
