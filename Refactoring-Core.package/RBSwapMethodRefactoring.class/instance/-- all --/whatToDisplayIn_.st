whatToDisplayIn: aBrowser 

	^ (self changes changes 
		select: [:change | selector = change selector ]) 
		gather: [:change | change whatToDisplayIn: aBrowser ]