class Ordonnance < ApplicationRecord
  has_many :medicaments
  belongs_to :patient
end
