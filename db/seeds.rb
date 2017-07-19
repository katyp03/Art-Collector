# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create([
  {fname: 'Steven', lname: 'Velez-Garcia', email: 'stevenvelez@nycda.com', password: '12345678', admin: true},
  {fname: 'Erin', lname: 'Young', email: 'erinyoung@nycda.com', password: '12345678', admin: true},
  {fname: 'Katy', lname: 'Pola', email: 'katypola@nycda.com', password: '12345678', admin: true}
])
