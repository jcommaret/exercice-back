class AAllowNull < ActiveRecord::Migration[6.1]
  def change
    change_column :users, :contract_id, :integer, :null => true
  end
end
