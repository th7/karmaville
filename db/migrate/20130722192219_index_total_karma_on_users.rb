class IndexTotalKarmaOnUsers < ActiveRecord::Migration
  def up
    change_table :users do |t|
      t.index :total_karma
    end
  end

  def down
    change_table :users do |t|
      t.remove_index :total_karma
    end
  end
end
