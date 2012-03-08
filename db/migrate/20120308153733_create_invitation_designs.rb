class CreateInvitationDesigns < ActiveRecord::Migration
  def change
    create_table :invitation_designs do |t|
      t.string :design_title
      t.integer :invitation_id
      t.boolean :is_available, :default => 1
      t.text :html_design
      t.timestamps
    end
  end
end
