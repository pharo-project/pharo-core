method: aMethod
	
	^ methods 
		at: aMethod actualClass name, '>>', aMethod selector
		ifAbsentPut: [ 
			super new
				method: aMethod;
				yourself ]