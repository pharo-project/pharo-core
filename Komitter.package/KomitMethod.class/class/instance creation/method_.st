method: aMethod
	^ methods
		at: aMethod category , ':' , aMethod actualClass name , '>>' , aMethod selector
		ifAbsentPut: [ 
			self new
				method: aMethod;
				yourself ]