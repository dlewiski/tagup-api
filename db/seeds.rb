# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Asset.create([
  { 
    name: 'Seeded asset', 
    watts: 10.01, 
    active: true, 
    restarted_at: Time.zone.parse("2020-10-21 23:59:59").to_f}
])