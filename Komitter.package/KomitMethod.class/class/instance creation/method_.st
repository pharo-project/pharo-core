method: aMethod
	^ methods
		at: aMethod category , ':' , aMethod actualClass name , '>>' , aMethod selector
		ifAbsentPut: [ 
			super new
				method: aMethod;
				yourself ]