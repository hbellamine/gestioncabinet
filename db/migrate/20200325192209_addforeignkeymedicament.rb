class Addforeignkeymedicament < ActiveRecord::Migration[5.2]
  def change
    add_reference :medicaments, :ordonnance, index: true, foreign_key: true
  end
end
