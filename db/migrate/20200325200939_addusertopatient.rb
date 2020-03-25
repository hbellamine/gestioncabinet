class Addusertopatient < ActiveRecord::Migration[5.2]
  def change
     add_reference :patients, :user, index: true, foreign_key: true
  end
end
