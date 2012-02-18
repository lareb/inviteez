class AddFirstTimeLoginInUser < ActiveRecord::Migration
  def self.up
      add_column :users, :first_time_login, :boolean
  end

  def self.down
  end
end
