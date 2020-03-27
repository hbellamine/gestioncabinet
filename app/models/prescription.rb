class Prescription < ApplicationRecord
  belongs_to :ordonnance
  has_many :medicaments
end
