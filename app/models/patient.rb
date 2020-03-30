class Patient < ApplicationRecord
  enum sexe: [:Homme, :Femme]
  has_many :consultations,dependent: :destroy
  belongs_to :user


    include PgSearch::Model
  pg_search_scope :search_by_nom_and_cin,
    against: [ :nom, :cin ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }

end
