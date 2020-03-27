class Addconsultationtoordonnance < ActiveRecord::Migration[5.2]
  def change
    add_reference :ordonnances, :consultations, index: true, foreign_key: true
  end
end
