module ItemsHelper

	def abv_avg_chart
		[
      		{
      			data: {
      				"#{@item.name}": @item.abv,
      				"Avg ABV": 7.2
      			}
      		}
    	]
	end

end