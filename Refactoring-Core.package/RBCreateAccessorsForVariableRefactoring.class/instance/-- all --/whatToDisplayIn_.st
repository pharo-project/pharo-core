whatToDisplayIn: aBrowser 

	^ (self changes changes 
		select: [:change | {getterMethod. setterMethod} includes: change selector ]) 
		gather: [:change | change whatToDisplayIn: aBrowser ]