running
execute: aWorkingCopy
	aWorkingCopy packageInfo methods do: [ :each |
		(each classIsMeta and: [ each selector = #initialize ])
			ifTrue: [ each actualClass theNonMetaClass initialize ] ]