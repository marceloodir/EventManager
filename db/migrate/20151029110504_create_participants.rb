class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.string :nome
      t.string :email
      t.string :telefone
      t.references :evento, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
