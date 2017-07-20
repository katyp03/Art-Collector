Artist.create([
	{id: 1, fname: 'Henri', lname: 'Matisse'},
	{id: 2, fname: 'Andy', lname: 'Warhol'},
	{id: 3, fname: 'Vincent', lname: 'Van Gogh'},
	{id: 4, fname: 'Jacque-Louis', lname: 'David'},
	{id: 5, fname: 'Han Sai', lname: 'Por'}
])

Item.create([
	{id: 1, artist_id: 1, medium: 'oil', title: 'Landscape at Collioure', style: 'Expressionism', size: 0, yoc: 1905, origin_country: 'France', picture: File.new("#{Rails.root}/app/assets/images/Landscape-at-Collioure.jpg")},
	{id: 2, artist_id: 2, medium: 'other', title: 'Flowers, 11.72', style: 'Pop Art', size: 0, yoc: 1970, origin_country: 'USA', picture: File.new("#{Rails.root}/app/assets/images/Warhol-Flowers.jpg")},
	{id: 3, artist_id: 3, medium: 'oil', title: 'Wheat Field with Cypress', style: 'Other', size: 1, yoc: 1889, origin_country: 'Netherlands', picture: File.new("#{Rails.root}/app/assets/images/Wheat-Field-with-Cypresses.jpg")},
	{id: 4, artist_id: 2, medium: 'photographic print', title: 'Muhammad Ali', style: 'Pop Art', size: 0, yoc: 1977, origin_country: 'USA', picture: File.new("#{Rails.root}/app/assets/images/Muhammed-Ali.jpg")},
	{id: 5, artist_id: 4, medium: 'oil', title: 'Andromache Mourning Hector', style: 'Neoclassical', size: 2, yoc: 1783, origin_country: 'France', picture: File.new("#{Rails.root}/app/assets/images/Andromache_Mourning_Hector.jpg")},
	{id: 6, artist_id: 5, medium: 'pen and ink', title: 'Fly Through the Wind 6', style: 'PostModernism', size: 0, yoc: 2013, origin_country: 'Singapore', picture: File.new("#{Rails.root}/app/assets/images/Fly-Through-The-Wind.jpg")}
])

Appraisal.create([
	{id: 1, item_id: 1, previous_owner: 'Metropolitan Museum of Art', value: 24000, condition: 1},
	{id: 2, item_id: 2, previous_owner: 'Andy Warhol Museum', value: 140000, condition: 2},
	{id: 3, item_id: 3, previous_owner: 'Edwina McOldRichPerson', value: 1500595, condition: 2},
	{id: 4, item_id: 4, previous_owner: 'Andy Warhol Museum', value: 5000, condition: 1},
	{id: 5, item_id: 5, previous_owner: 'Musee D orsay', value: 200000000, condition: 0},
	{id: 6, item_id: 6, previous_owner: 'Jaden Trustfundbaby', value: 61000, condition: 0}
])	

User.create([
	{id: 1, fname: 'Alexa', lname: 'Anderews', email: 'alexa@me.com', password: 'password', admin: 'false'},
	{id: 2, fname: 'Barry', lname: 'Bockman', email: 'barry@me.com', password: '12345678', admin: 'false'},
	{id: 3, fname: 'Cathy', lname: 'Carter', email: 'cathy@me.com', password: 'cathy123', admin: 'false'},
	{id: 4, fname: 'Dan', lname: 'Daniels', email: 'dan@me.com', password: '87654321', admin: 'false'},
	{id: 5, fname: 'Ethan', lname: 'Erikson', email: 'ethan@me.com', password: 'drowssap', admin: 'false'},
	{id: 6, fname: 'Katy', lname: 'Pola', email: 'katyp03@gmail.com', password: 'katykaty', admin: 'true'},
	{id: 7,  fname: 'Erin', lname: 'Young', email: 'erinkarlayoung@gmail.com', password: 'erinerin', admin: 'true'},
	{id: 8, fname: 'Steven', lname: 'Velez-Garcia', email: 'steven.velez711@gmail.com', password: 'stevenvg', admin: 'true'}
])

Sale.create([
	{id: 1, user_id: 1, address: 'Boston', payment_amount: 1200, lease_duration: 3},
	{id: 2, user_id: 2, address: 'New York', payment_amount: 15000, lease_duration: 3},
	{id: 3, user_id: 3, address: 'London', payment_amount: 10000, lease_duration: 1},
	{id: 4, user_id: 4, address: 'Philadelphia', payment_amount: 500, lease_duration: 3},
	{id: 5, user_id: 5, address: 'New York', payment_amount: 1500000, lease_duration: 3}
])

SaleItem.create([
	{sale_id: 1, item_id: 1},
	{sale_id: 2, item_id: 2},
	{sale_id: 2, item_id: 6},
	{sale_id: 3, item_id: 3},
	{sale_id: 4, item_id: 4},
	{sale_id: 5, item_id: 5}
])