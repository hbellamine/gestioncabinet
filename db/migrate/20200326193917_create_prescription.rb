class CreatePrescription < ActiveRecord::Migration[5.2]
  def change
    create_table :prescriptions do |t|
      t.references :ordonnance, foreign_key: true
      t.references :medicament, foreign_key: true
      t.string :dose
      t.string :duree
    end
  end
end
