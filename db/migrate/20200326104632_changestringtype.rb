class Changestringtype < ActiveRecord::Migration[5.2]
  def change
    change_column :consultations, :examenclinique, :text
    change_column :consultations, :examencomplementaire, :text
  end
end
