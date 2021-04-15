class CreateContracts < ActiveRecord::Migration[6.1]
  def change
    create_table :contracts do |t|
      t.integer number
      t.string status
      t.date date_start
      t.date date_end
      t.boolean all_inclusive
      t.string 
      
      t.timestamps
    end
  end
end
