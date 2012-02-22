class Event < ActiveRecord::Base

  belongs_to :user_invitations
  has_many :user_invitations, :dependent =>:destroy
end
