module ItemsHelper

	def abv_avg_chart
		[
      		{
      			data: {
      				"#{@item.name}": "#{@item.abv}",
      				"#{@item.company.name} avg": @item_avg_abv
      			}
      		}
    	]
	end

end