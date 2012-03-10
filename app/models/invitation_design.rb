class InvitationDesign < ActiveRecord::Base
  belongs_to :invitation
  validates :design_title, :presence => true, :uniqueness => true, :length => { :maximum => 100 }
end
