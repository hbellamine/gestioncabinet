class Deleteforeignkey < ActiveRecord::Migration[5.2]
  def change

    remove_reference :ordonnances, :medicament, index: true, foreign_key: true
  end
end
