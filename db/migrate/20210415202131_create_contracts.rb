class CreateContracts < ActiveRecord::Migration[6.1]
  def change
    create_table :contracts do |t|
      t.integer "number"
      t.boolean "status"
      t.string "description"
      t.date "date_start"
      t.date "date_end"
      t.boolean "all_risk"
      t.belongs_to :users
      t.timestamps
    end
  end
end
