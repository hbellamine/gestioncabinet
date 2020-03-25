class Adduserforeign < ActiveRecord::Migration[5.2]
  def change

    add_reference :users, :patients, index: true, foreign_key: true
  end
end
