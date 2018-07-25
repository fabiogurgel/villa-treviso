class CreatePeriodoReservas < ActiveRecord::Migration[5.0]
  def change
    create_table :periodo_reservas do |t|
      t.integer :codigo
      t.string :descricao

      t.timestamps
    end
  end
end
