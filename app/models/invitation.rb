class Invitation < ActiveRecord::Base
    has_one :event
    has_many :invitation_designs

    scope :active, where("is_active = 1")
end
