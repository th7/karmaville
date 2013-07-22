class ChangeDefaultTotalKarmaOnUsers < ActiveRecord::Migration
  def up
    change_column_default(:users, :total_karma, 0)
  end

  def down
    change_column_default(:users, :total_karma, nil)
  end
end
