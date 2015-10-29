class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :titulo
      t.text :descricao
      t.string :imagem
      t.datetime :data
      t.references :criador, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
