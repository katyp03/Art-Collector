# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Artist.create([
	{fname: 'Henri', lname: 'Matisse'},
	{fname: 'Andy', lname: 'Warhol'},
	{fname: 'Vincent', lname: 'Van Gogh'},
	{fname: 'Jacque-Louis', lname: 'David'},
	{fname: 'Han Sai', lname: 'Por'}
])

Item.create([
	{artist_id: 1, medium: 'oil', title: 'Landscape at Collioure', style: 'Expressionism', size: 0, year_of_creation: 1905, origin_country: 'France'},
	{artist_id: 2, medium: 'other', title: 'Flowers, 11.72', style: 'Pop Art', size: 0, year_of_creation: 1970, origin_country: 'USA'},
	{artist_id: 3, medium: 'oil', title: 'Wheat Field with Cypress', style: 'Other', size: 1, year_of_creation: 1889, origin_country: 'Netherlands'},
	{artist_id: 2, medium: 'photographic print', title: 'Muhammad Ali', style: 'Pop Art', size: 0, year_of_creation: 1977, origin_country: 'USA'},
	{artist_id: 4, medium: 'oil', title: 'Andromache Mourning Hector', style: 'Neoclassical', size: 2, year_of_creation: 1783, origin_country: 'France'},
	{artist_id: 5, medium: 'pen and ink', title: 'Fly Through the Wind 6', style: 'PostModernism', size: 0, year_of_creation: 2013, origin_country: 'Singapore'}
])

Appraisal.create([
	{item_id: 1, previous_owner: 'Metropolitan Museum of Art', value: 24000, condition: 1},
	{item_id: 2, previous_owner: 'Andy Warhol Museum', value: 140000, condition: 2},
	{item_id: 3, previous_owner: 'Edwina McOldRichPerson', value: 1500595, condition: 2},
	{item_id: 4, previous_owner: 'Andy Warhol Museum', value: 5000, condition: 1},
	{item_id: 5, previous_owner: 'Musee D orsay', value: 200000000, condition: 0},
	{item_id: 6, previous_owner: 'Jaden Trustfundbaby', value: 61000, condition: 0},
])	

User.create([
	{fname: 'Alexa', lname: 'Anderews', email: 'alexa@me.com', password: 'password', admin: 'false'},
	{fname: 'Barry', lname: 'Bockman', email: 'barry@me.com', password: '12345678', admin: 'false'},
	{fname: 'Cathy', lname: 'Carter', email: 'cathy@me.com', password: 'cathy123', admin: 'false'},
	{fname: 'Dan', lname: 'Daniels', email: 'dan@me.com', password: '87654321', admin: 'false'},
	{fname: 'Ethan', lname: 'Erikson', email: 'ethan@me.com', password: 'drowssap', admin: 'false'},
	{fname: 'Katy', lname: 'Pola', email: 'katyp03@gmail.com', password: 'katykaty', admin: 'true'},
	{fname: 'Erin', lname: 'Young', email: 'erinkarlayoung@gmail.com', password: 'erinerin', admin: 'true'},
	{fname: 'Steven', lname: 'Velez-Garcia', email: 'steven.velez711@gmail.com', password: 'stevenvg', admin: 'true'},
])

Transaction_Item.create([
	{transaction_id: 1, item_id: 1},
	{transaction_id: 2, item_id: 2, 6},
	{transaction_id: 3, item_id: 3},
	{transaction_id: 4, item_id: 4},
	{transaction_id: 5, item_id: 5},
])

Transaction.create([
	{user_id: 1, address: 'Boston', payment_amount: 1200, lease_duration: 3},
	{user_id: 2, address: 'New York', payment_amount: 15000, lease_duration: 3},
	{user_id: 3, address: 'London', payment_amount: 10000, lease_duration: 1},
	{user_id: 4, address: 'Philadelphia', payment_amount: 500, lease_duration: 3},
	{user_id: 5, address: 'New York', payment_amount: 1500000, lease_duration: 3}
])


