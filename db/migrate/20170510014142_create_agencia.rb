class CreateAgencia < ActiveRecord::Migration[5.0]
  def change
    create_table :agencia do |t|
      t.string :codigo
      t.string :descricao

      t.timestamps
    end
  end
end
