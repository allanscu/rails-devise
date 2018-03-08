module CompaniesHelper

	def adjusted_datetime
		if Time.now.dst?
			(@company.items.order(release_date: :asc).last.release_date + 17.hours).to_datetime
		else
			(@company.items.order(release_date: :asc).last.release_date + 16.hours).to_datetime
		end
	end
	
end
