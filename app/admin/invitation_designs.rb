ActiveAdmin.register InvitationDesign do
  index do
      column "#", :id
      column :design_title
      column :invitation
      column :is_available
      column :screenshot
      column :created_at
      column :updated_at
      default_actions
  end

  show do |ad|
      attributes_table do
        row :id
        row :design_title
        row :invitation
        row :is_available
        row :screenshot
        row :html_design do
          raw "<iframe height='725px' width='825px' src='/design_templates/preview/#{ad.id}'></iframe>"
        end
      end
      #active_admin_comments
  end

end
