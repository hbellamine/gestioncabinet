class Addconsultationtoordonnancee < ActiveRecord::Migration[5.2]
  def change
    remove_reference :ordonnances, :consultations, index: true, foreign_key: true
    add_reference :ordonnances, :consultation, index: true, foreign_key: true
  end
end
