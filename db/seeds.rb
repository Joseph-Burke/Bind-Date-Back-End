# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([
  { name: 'Joseph Burke', email: 'joseph_burke@outlook.com' },
  { name: 'Deborah Burke', email: 'deborah_burke@outlook.co.uk' },
  { name: 'Martin Burke', email: 'martin@hotmail.com' },
  { name: 'Ellen Burke', email: 'ellen_burke@outlook.ac' },
  { name: 'Daniel Burke', email: 'danny_b@outlook.ca' },
  { name: 'Katherine Burke', email: 'katie@gmail.com' }
])

viewings = Viewing.create([
  { date: '01/02/2020', time: '12:00', house_id: 1, user_id: 1 },
  { date: '07/02/2020', time: '15:00', house_id: 3, user_id: 2 }
])

houses = House.create([
  { location: '27 Gloucester Crescent', description: 'A cosy little getaway, perfect for a young family', bedrooms: 2, bathrooms: 1 },
  { location: 'Millstone Drive, Ashby de la Zouch, LE65', description: 'A stunning range of contemporary homes, with flexible living space set in a secluded development.', bedrooms: 3, bathrooms: 3 },
  { location: 'Paddock Close, Quorn, Leicester, LE12', description: 'A substantial four bedroom detached property on a large corner plot.', bedrooms: 4, bathrooms: 1 },
])