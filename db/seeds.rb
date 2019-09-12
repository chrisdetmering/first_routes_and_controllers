# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Artwork.destroy_all
ArtworkShare.destroy_all

user1 = User.create!(username: 'Chris')
user2 = User.create!(username: 'Alex')
user3 = User.create!(username: 'Mikey')

art_piece1 = Artwork.create!(title: 'Hello World', image_url: 'www.world.com', artist_id: user1.id)
art_piece1 = Artwork.create!(title: 'English in repose', image_url: 'www.english.com', artist_id: user2.id) 
art_piece1 = Artwork.create!(title: 'Macking on Math', image_url: 'www.math.com', artist_id: user3.id)  

artshares = ArtworkShare.create!(artwork_id: art_piece1.id, viewer_id: user2.id)