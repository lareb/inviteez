class CreateInvitations < ActiveRecord::Migration
  def self.up
    create_table :invitations do |t|
      t.string :invitation_type
      t.boolean :is_active, :default => 1
      t.integer :display_order, :unique => true
      t.timestamps
    end
  end

  def self.down
    drop_table :invitations
  end
end
