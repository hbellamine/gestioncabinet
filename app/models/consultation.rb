class Consultation < ApplicationRecord
  belongs_to :patient
  has_many_attached :pictures
end
