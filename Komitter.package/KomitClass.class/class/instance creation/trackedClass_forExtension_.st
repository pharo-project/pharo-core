trackedClass: trackedClass forExtension: aCategory

	^ classes 
		at: trackedClass name, aCategory
		ifAbsentPut: [ super new 
			trackedClass: trackedClass;
			yourself ]