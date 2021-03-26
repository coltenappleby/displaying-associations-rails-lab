# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Song.destroy_all
Artist.destroy_all

artist_list = ['Bing Crosby','Elton John','Mungo Jerry','Whitney Houston','Bill Haley & His Comets','Elvis Presley','USA for Africa','The Ink Spots','Baccara','Celine Dion','Mariah Carey','Bryan Adams','John Travolta and Olivia Newton-John','Scorpions',]
songs_list = ["White Christmas", "Candle in the Wind 1997", "In the Summertime", "I Will Always Love You", "Rock Around the Clock", "It's Now or Never", "We Are the World", "If I Didn't Care", "Yes Sir, I Can Boogie", "My Heart Will Go On", "All I Want for Christmas Is You", "(Everything I Do) I Do It for You", "You're the One That I Want", "Wind of Change"]
i=0
while i < 13
    Artist.create(name: artist_list[i])
    i += 1
end

i=0
while i < 13
    Song.create(title: songs_list[i], artist: Artist.all[i])
    i += 1
end