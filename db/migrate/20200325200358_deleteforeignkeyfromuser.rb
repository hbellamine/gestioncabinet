class Deleteforeignkeyfromuser < ActiveRecord::Migration[5.2]
  def change
    remove_reference :users, :patients, index: true, foreign_key: true
  end
end
