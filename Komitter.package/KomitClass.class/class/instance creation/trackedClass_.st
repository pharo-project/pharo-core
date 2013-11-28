trackedClass: trackedClass

	^ classes 
		at: trackedClass name
		ifAbsentPut: [ super new 
			trackedClass: trackedClass;
			yourself ]