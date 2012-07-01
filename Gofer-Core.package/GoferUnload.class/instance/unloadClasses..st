unloading
unloadClasses: aWorkingCopy
	aWorkingCopy packageInfo methods do: [ :each |
		(each classIsMeta and: [ each selector = #unload ])
			ifTrue: [ each actualClass theNonMetaClass unload ] ]