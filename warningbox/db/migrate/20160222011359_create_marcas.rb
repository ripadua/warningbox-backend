class CreateMarcas < ActiveRecord::Migration
  def change
    create_table :marcas do |t|
      t.string :nomeMarca

      t.timestamps null: false
    end
  end
end
