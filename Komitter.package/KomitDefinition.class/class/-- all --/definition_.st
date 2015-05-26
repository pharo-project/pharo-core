definition: definition

	^ definitions
		at: definition className
		ifAbsentPut: [ 
			super new
				definition: definition;
				yourself ]