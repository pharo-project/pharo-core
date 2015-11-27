package: package

	^ packages 
		at: package name 
		ifAbsentPut: [
			self new
				package: package;
				yourself ]