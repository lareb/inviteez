class Event < ActiveRecord::Base
    belongs_to :user
    has_one :invitation
    has_one :event_contact_info
end
