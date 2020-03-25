class Patient < ApplicationRecord
  enum sexe: [:Homme, :Femme]
  has_many :consultations
  belongs_to :user
end
