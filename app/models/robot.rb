class Robot < ApplicationRecord
	def club_name
		name + slogan
	end
end
