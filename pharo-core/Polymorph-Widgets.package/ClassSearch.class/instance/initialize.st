initialization
initialize
	super initialize.
	self getList: [ :regex| 
			SystemNavigation default allClassesAndTraits select: [ :cls|
				regex search: cls name]].