# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Prescription.destroy_all
Ordonnance.destroy_all
Consultation.destroy_all
Patient.destroy_all
Medicament.destroy_all


require 'csv'

csv_options = { col_sep: ';', quote_char: '"', headers: :first_row }
filepath    = 'app/assets/images/medicaments.csv'



CSV.foreach(filepath, csv_options) do |row|
  Medicament.create(nom: row[0], molecule: row['Molecule'],dosage: row['Dosage'],unite: row['Unite'],forme: row['Forme'],presentation: row['Presentation'],ppv: row['PPV'],remboursement: row['Remboursement'])
end

