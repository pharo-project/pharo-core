definition: definition

	^ definitions
		at: definition className
		ifAbsentPut: [ 
			self new
				definition: definition;
				yourself ]