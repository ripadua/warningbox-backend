class CreateVencimentos < ActiveRecord::Migration
  def change
    create_table :vencimentos do |t|
      t.binary :imagem
      t.date :dataVencimento
      t.references :estabelecimento, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
