class CreateConsultations < ActiveRecord::Migration[5.2]
  def change
    create_table :consultations do |t|
      t.date :date
      t.string :motif
      t.string :examenclinique
      t.string :examencomplementaire
      t.string :pictures
      t.references :patient, foreign_key: true

      t.timestamps
    end
  end
end
