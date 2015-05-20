# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#  Users
# id:serial, access_level_id: int, email: str, login_type:int
User.create([{ access_level_id: 1, email: 'admin@uxb.com', login_type:1, password: '123', password_salt: 'abcde' }]);
User.create([{ access_level_id: 3, email: 'dt@uxb.com', login_type:1, password: '123', password_salt: 'abcde' }]);
User.create([{ access_level_id: 3, email: 'beta@uxb.com', login_type:1, password: '123', password_salt: 'abcde' }]);


#  Users Access Level
# id:serial, access_type: str
AccessLevel.create([{access_type:'admin'}]);
AccessLevel.create([{access_type:'organizer'}]);
AccessLevel.create([{access_type:'speaker'}]);
AccessLevel.create([{access_type:'sponsor'}]);

# Talks
# id: serial, title: str, blurb: str, description: text, timedate: datetime, limit: int, duration: int (mins), speaker_id: int
Talk.create([{ title: 'Flipping Hair', blurb: 'How to flip your hair', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorem quam sint ea debitis natus quos iusto earum corporis excepturi inventore pariatur ipsum non est itaque repellat, ratione aliquam accusantium placeat.', date: '', limit: 30, duration: 20, speaker_id: 1 }]);
Talk.create([{ title: 'Advance Hair Flipping', blurb: 'How to flip your hair', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorem quam sint ea debitis natus quos iusto earum corporis excepturi inventore pariatur ipsum non est itaque repellat, ratione aliquam accusantium placeat.', date: '', limit: 30, duration: 20, speaker_id: 1 }]);
Talk.create([{ title: 'Mastering all slaves', blurb: 'How the real master turns everyone to slaves', description: 'a man who has people working for him, especially servants or slaves.', date: '', limit: 30, duration: 60, speaker_id: 1 }]);

# Tickets
# id: serial, registra: str, talk_id: int
Ticket.create([{registra: 'my@ga.com', talk_id:1}]);
Ticket.create([{registra: 'my@ga.com', talk_id:2}]);
Ticket.create([{registra: 'louis@ga.com', talk_id:1}]);
Ticket.create([{registra: 'jared@ga.com', talk_id:1}]);


# Speakers
# id: serial, user_id: int, name: str, blurb: str, image_url: str
Speaker.create([{ user_id: 2, name: 'Daniel Tsui', remote_image_url: 'https://ga-core.s3.amazonaws.com/production/uploads/instructor/image/1700/thumb_HEADSHOTS__2001_.jpg', blurb: 'Lead Instructor, Web Development Immersive, General Assembly'}]);
Speaker.create([{ user_id: 3, name: 'Beta', blurb: 'Master of all UXB', remote_image_url: 'http://m.c.lnkd.licdn.com/media/p/8/005/06d/30d/2881546.jpg'}]);
