class UserInvitations < ActiveRecord::Base
    belongs_to :invitation
    belongs_to :event
    belongs_to :user
end
