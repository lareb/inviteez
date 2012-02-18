# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
type = ["Wedding", "Engagement", "Birthday", "Anniversary", "Inauguration"]
type.each do |t|
    Invitation.create(:invitation_type => "#{t}", :is_active => 1)
end
