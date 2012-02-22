class Invitation < ActiveRecord::Base
    #has_and_belongs_to_many :users
    has_many :user_invitations, :dependent =>:destroy
    has_many :events, :through =>:user_invitations #, :order => 'roles.id ASC'
end
