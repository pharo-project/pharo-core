package: package

	^ packages 
		at: package name 
		ifAbsentPut: [
			super new
				package: package;
				yourself ]