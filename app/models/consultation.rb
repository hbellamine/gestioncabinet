class Consultation < ApplicationRecord
  belongs_to :patient
  has_many_attached :pictures, dependent: :destroy
  has_one :ordonnance, dependent: :destroy
end
