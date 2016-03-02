class CreateFotoProdutos < ActiveRecord::Migration
  def change
    create_table :foto_produtos do |t|
      t.binary :imagem
      t.date :dataVencimento

      t.timestamps null: false
    end
  end
end
