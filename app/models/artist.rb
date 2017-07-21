class Artist < ApplicationRecord
	has_many :items
	def full_name
    	"#{fname} #{lname}".strip
  end
end
