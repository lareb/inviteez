class CreateUserInvitations < ActiveRecord::Migration
  def self.up
    create_table :user_invitations do |t|
      t.integer :user_id
      t.integer :invitation_id
      t.integer :event_id
      t.string :contact_person_name
      t.string :contact_person_number
      t.string :contact_person_email
      t.text :contact_person_address
    end
  end

  def self.down
    drop_table :user_invitations
  end
end
