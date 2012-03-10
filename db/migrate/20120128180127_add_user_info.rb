class AddUserInfo < ActiveRecord::Migration
  def self.up
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    #add_column :users, :sex, :boolean, :default => 1 #default male
    add_column :users, :sex, :boolean  #for PG database, just commented out this line when using mysql
    add_column :users, :active, :boolean, :default => 1 #account is active or not
    add_column :users, :dob, :date #date of birth
  end

  def self.down
  end
end
