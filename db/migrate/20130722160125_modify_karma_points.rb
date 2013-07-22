class ModifyKarmaPoints < ActiveRecord::Migration
  def up
    change_table :karma_points do |t|
      t.index :user_id
    end
  end

  def down
    change_table :karma_points do |t|
      t.remove_index :user_id
    end
  end
end
