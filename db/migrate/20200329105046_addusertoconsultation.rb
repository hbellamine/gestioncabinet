class Addusertoconsultation < ActiveRecord::Migration[5.2]
  def change
     add_reference :consultations, :user, index: true, foreign_key: true
  end
end
