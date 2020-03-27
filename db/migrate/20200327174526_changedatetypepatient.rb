class Changedatetypepatient < ActiveRecord::Migration[5.2]
  def change
    change_column :patients, :datedenaissance, :string
  end
end
