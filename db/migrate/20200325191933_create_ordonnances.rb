class CreateOrdonnances < ActiveRecord::Migration[5.2]
  def change
    create_table :ordonnances do |t|
      t.references :medicament, foreign_key: true
      t.date :date
      t.references :patient, foreign_key: true

      t.timestamps
    end
  end
end
