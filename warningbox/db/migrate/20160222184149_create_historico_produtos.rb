class CreateHistoricoProdutos < ActiveRecord::Migration
  def change
    create_table :historico_produtos do |t|
      t.references :produto, index: true, foreign_key: true
      t.date :dataVencimento

      t.timestamps null: false
    end
  end
end
