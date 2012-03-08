class RenameInvitationTypeField < ActiveRecord::Migration
  def up
    rename_column :invitations, :invitation_type, :name
  end

  def down
    rename_column :invitations, :name, :invitation_type
  end
end
