class AddTotalKarmaToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.integer :total_karma
    end
  end
end
