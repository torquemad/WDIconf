# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#  Users
# id:serial, access_level: int, email: str, login_type:int
User.create([{ access_level: 1, email: 'admin@uxb.com', login_type:1 }]);


#  Users Access Level
# id:serial, access_type: str
AccessLevel.create([{access_type:'admin'}]);
AccessLevel.create([{access_type:'organizer'}]);
AccessLevel.create([{access_type:'speaker'}]);
AccessLevel.create([{access_type:'sponsor'}]);

# Talks
# id: serial, title: str, blurb: str, description: text, timedate: datetime, limit: int, duration: int (mins)



# Tickets
# id: serial, registra: str, talk_id: int



# Speakers
# id: serial, user_id: int, talk_id: int, name: str, blurb: str
