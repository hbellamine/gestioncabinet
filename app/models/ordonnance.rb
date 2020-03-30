class Ordonnance < ApplicationRecord
  has_many :prescriptions, dependent: :destroy
  has_many :medicaments, through: :prescriptions
  belongs_to :patient
end
