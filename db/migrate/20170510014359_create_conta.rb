class CreateConta < ActiveRecord::Migration[5.0]
  def change
    create_table :conta do |t|
      t.references :agencia, foreign_key: true
      t.references :cliente, foreign_key: true
      t.string :codigo
      t.string :descricao
      t.float :saldo

      t.timestamps
    end
  end
end
