class Medicament < ApplicationRecord
  has_many :prescriptions

      include PgSearch::Model
  pg_search_scope :search_by_nom_and_molecule,
    against: [ :nom, :molecule ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }

end
