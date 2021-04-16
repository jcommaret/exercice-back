class AddContractRefToUsers < ActiveRecord::Migration[6.1]
  def change
    add_reference :users, :contract, foreign_key: true
  end
end
