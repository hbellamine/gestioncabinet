class CreateMedicaments < ActiveRecord::Migration[5.2]
  def change
    create_table :medicaments do |t|
      t.string :duree
      t.string :nom
      t.string :dose

      t.timestamps
    end
  end
end
