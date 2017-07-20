json.extract! artist, :id, :fname, :lname, :created_at, :updated_at
json.url artist_url(artist, format: :json)
