class Addcolumnconsultation < ActiveRecord::Migration[5.2]
  def change

    add_column :consultations, :diagfinal, :text
  end
end
