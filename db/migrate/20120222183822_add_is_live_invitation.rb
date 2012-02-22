class AddIsLiveInvitation < ActiveRecord::Migration
  def up
    add_column :events, :is_live, :boolean, :default => 1
  end

  def down
  end
end
