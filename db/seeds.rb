# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u = User.create email: 'user@example.com', password: 'password'

t1 = Team.create name: 'Team1', creator: u, visibility: 'public'
t2 = Team.create name: 'Team2', creator: u, visibility: 'public'
t3 = Team.create name: 'Team3', creator: u, visibility: 'public'

c1 = Channel.create name: 'Channel1', creator: u, team: t1, visibility: 'public'
c2 = Channel.create name: 'Channel2', creator: u, team: t1, visibility: 'public'
c3 = Channel.create name: 'Channel3', creator: u, team: t1, visibility: 'public'

m1 = Message.create content: 'm1', creator: u, channel: c1
m2 = Message.create content: 'm2', creator: u, channel: c1
m3 = Message.create content: 'm3', creator: u, channel: c1

