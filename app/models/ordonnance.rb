class Ordonnance < ApplicationRecord
  has_many :prescriptions
  has_many :medicaments, through: :prescriptions

  belongs_to :patient
end
