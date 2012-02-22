class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.string :title
      t.string :subtitle, :limit => 512
      t.text :description
      t.text :venue
      t.string :bride_info
      t.string :groom_info
      t.integer :venue_zip
      t.datetime :start_date
      t.datetime :end_date
      t.integer :sub_event_id
      t.text :host_names
      t.integer :user_id
      t.integer :invitation_id
      t.integer :event_contact_info_id
      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end