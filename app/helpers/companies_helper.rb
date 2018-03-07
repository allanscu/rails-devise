module CompaniesHelper

	def adjusted_datetime
		if Time.now.dst?
			(@company.items.order(release_date: :asc).last.release_date - 7.hours).to_datetime
		else
			(@company.items.order(release_date: :asc).last.release_date - 8.hours).to_datetime
		end
	end
	
end
