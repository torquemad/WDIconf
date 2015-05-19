# SEED DATA FOR DB

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
Talk.create([{ title: 'Flipping Hair', blurb: 'How to flip your hair', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorem quam sint ea debitis natus quos iusto earum corporis excepturi inventore pariatur ipsum non est itaque repellat, ratione aliquam accusantium placeat.', date: '', limit: 30, duration: 60, speaker_id: 1 }]);
Talk.create([{ title: 'Flipping Hair', blurb: 'How to flip your hair', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorem quam sint ea debitis natus quos iusto earum corporis excepturi inventore pariatur ipsum non est itaque repellat, ratione aliquam accusantium placeat.', date: '', limit: 30, duration: 60, speaker_id: 2 }]);
Talk.create([{ title: 'Flipping Hair 2', blurb: 'How to flip your hair', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorem quam sint ea debitis natus quos iusto earum corporis excepturi inventore pariatur ipsum non est itaque repellat, ratione aliquam accusantium placeat.', date: '', limit: 30, duration: 60, speaker_id: 3 }]);
Talk.create([{ title: 'Flipping Hair', blurb: 'How to flip your hair', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorem quam sint ea debitis natus quos iusto earum corporis excepturi inventore pariatur ipsum non est itaque repellat, ratione aliquam accusantium placeat.', date: '', limit: 30, duration: 60, speaker_id: 4 }]);
Talk.create([{ title: 'Flipping Hair', blurb: 'How to flip your hair', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorem quam sint ea debitis natus quos iusto earum corporis excepturi inventore pariatur ipsum non est itaque repellat, ratione aliquam accusantium placeat.', date: '', limit: 30, duration: 60, speaker_id: 5 }]);
Talk.create([{ title: 'Flipping Hair', blurb: 'How to flip your hair', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorem quam sint ea debitis natus quos iusto earum corporis excepturi inventore pariatur ipsum non est itaque repellat, ratione aliquam accusantium placeat.', date: '', limit: 30, duration: 60, speaker_id: 6 }]);
Talk.create([{ title: 'Flipping Hair', blurb: 'How to flip your hair', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorem quam sint ea debitis natus quos iusto earum corporis excepturi inventore pariatur ipsum non est itaque repellat, ratione aliquam accusantium placeat.', date: '', limit: 30, duration: 60, speaker_id: 7 }]);
Talk.create([{ title: 'Flipping Hair', blurb: 'How to flip your hair', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorem quam sint ea debitis natus quos iusto earum corporis excepturi inventore pariatur ipsum non est itaque repellat, ratione aliquam accusantium placeat.', date: '', limit: 30, duration: 60, speaker_id: 8 }]);
Talk.create([{ title: 'Flipping Hair', blurb: 'How to flip your hair', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorem quam sint ea debitis natus quos iusto earum corporis excepturi inventore pariatur ipsum non est itaque repellat, ratione aliquam accusantium placeat.', date: '', limit: 30, duration: 60, speaker_id: 9 }]);
Talk.create([{ title: 'Flipping Hair', blurb: 'How to flip your hair', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorem quam sint ea debitis natus quos iusto earum corporis excepturi inventore pariatur ipsum non est itaque repellat, ratione aliquam accusantium placeat.', date: '', limit: 30, duration: 60, speaker_id: 10 }]);
Talk.create([{ title: 'Flipping Hair', blurb: 'How to flip your hair', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorem quam sint ea debitis natus quos iusto earum corporis excepturi inventore pariatur ipsum non est itaque repellat, ratione aliquam accusantium placeat.', date: '', limit: 30, duration: 60, speaker_id: 11 }]);
Talk.create([{ title: 'Flipping Hair', blurb: 'How to flip your hair', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorem quam sint ea debitis natus quos iusto earum corporis excepturi inventore pariatur ipsum non est itaque repellat, ratione aliquam accusantium placeat.', date: '', limit: 30, duration: 60, speaker_id: 12 }]);
Talk.create([{ title: 'Flipping Hair', blurb: 'How to flip your hair', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorem quam sint ea debitis natus quos iusto earum corporis excepturi inventore pariatur ipsum non est itaque repellat, ratione aliquam accusantium placeat.', date: '', limit: 30, duration: 60, speaker_id: 13 }]);
Talk.create([{ title: 'Flipping Hair', blurb: 'How to flip your hair', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorem quam sint ea debitis natus quos iusto earum corporis excepturi inventore pariatur ipsum non est itaque repellat, ratione aliquam accusantium placeat.', date: '', limit: 30, duration: 60, speaker_id: 14 }]);

# Tickets
# id: serial, registra: str, talk_id: int
Ticket.create([{ :registra => "test1@test.com", :talk_id => 1 }])
Ticket.create([{ :registra => "test1@test.com", :talk_id => 2 }])
Ticket.create([{ :registra => "test1@test.com", :talk_id => 3 }])
Ticket.create([{ :registra => "test2@test.com", :talk_id => 6 }])

# Speakers
# id: serial, user_id: int, name: str, blurb: str, image_url: str
Speaker.create([{ user_id: 2, name: 'Daniel Tsui', image_url: 'https://ga-core.s3.amazonaws.com/production/uploads/instructor/image/1700/thumb_HEADSHOTS__2001_.jpg', blurb: 'Lead Instructor, Web Development Immersive, General Assembly'}]);
Speaker.create([{ user_id: 3, name: 'Aden Margheriti', blurb: 'Eater of pizza, consumer of basketball'}]);
Speaker.create([{ user_id: 4, name: 'Dominic White', blurb: 'Master of all UXB'}]);
Speaker.create([{ user_id: 5, name: 'Jared O\'Loughlin', blurb: 'Master of all UXB'}]);
Speaker.create([{ user_id: 6, name: 'Beta', blurb: 'Master of all UXB', image_url: 'http://m.c.lnkd.licdn.com/media/p/8/005/06d/30d/2881546.jpg'}]);
Speaker.create([{ user_id: 7, name: 'JC Lee', blurb: 'Master of all UXB'}]);
Speaker.create([{ user_id: 8, name: 'Jeff Wolff', blurb: 'Master of all UXB'}]);
Speaker.create([{ user_id: 9, name: 'Justin Ward', blurb: 'Master of all UXB'}]);
Speaker.create([{ user_id: 10, name: 'Louis Moore', blurb: 'Master of all UXB'}]);
Speaker.create([{ user_id: 11, name: 'Luke Shillabeer', blurb: 'Master of all UXB'}]);
Speaker.create([{ user_id: 12, name: 'Matt Cameron', blurb: 'Master of all UXB'}]);
Speaker.create([{ user_id: 13, name: 'Mike Goodwin', blurb: 'Master of all UXB'}]);
Speaker.create([{ user_id: 14, name: 'Nick Pateman', blurb: 'Master of all UXB'}]);
Speaker.create([{ user_id: 15, name: 'Philip Castiglione', blurb: 'Master of all UXB'}]);
