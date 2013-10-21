browseSelectedObjectClass
	self selectedObjectDo: [ :anObject | Smalltalk tools browser newOnClass: anObject class ]