class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.string :age
      t.integer :sexe
      t.string :nom
      t.string :prenom
      t.date :datedenaissance
      t.string :email
      t.string :telephone
      t.string :adresse
      t.string :cin

      t.timestamps
    end
  end
end
