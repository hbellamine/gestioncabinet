class Deletecolumnsmedicament < ActiveRecord::Migration[5.2]
  def change

  remove_column :medicaments, :duree
  remove_column :medicaments, :dose
  add_column :medicaments, :molecule, :string
  add_column :medicaments, :dosage, :string
  add_column :medicaments, :unite, :string
  add_column :medicaments, :forme, :string
  add_column :medicaments, :presentation, :string
  add_column :medicaments, :ppv, :string
  add_column :medicaments, :remboursement, :string

  end
end
