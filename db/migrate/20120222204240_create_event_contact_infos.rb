class CreateEventContactInfos < ActiveRecord::Migration
  def change
    create_table :event_contact_infos do |t|
      t.string :contact_person_name
      t.string :contact_person_number
      t.string :contact_person_email
      t.text :contact_person_address
      t.timestamps
    end
  end
end
