# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Flush all the record
ActiveRecord::Base.connection.execute("TRUNCATE TABLE invitations")
type = ["Birthday", "Wedding","Anniversary" ,"Engagement", "Get to Gather", "Festival", "Farewell", "Welcome","Inauguration", "Corporate"]
type.each_with_index do |t, index|
    Invitation.create(:invitation_type => "#{t}", :is_active => 1, :display_order => index + 1)
end
