class AddScreenshotInInvitationDesign < ActiveRecord::Migration
  def up
    add_column :invitation_designs, :screenshot, :string
  end

  def down
    remove_column :invitation_designs, :screenshot
  end
end
