class Event < ActiveRecord::Base
    belongs_to :user
    has_one :invitation
    has_one :event_contact_info

    validates :title, :description, :start_date, :venue, :presence => true
    #validates_datetime :start_date
    #validates_datetime :end_date
end
