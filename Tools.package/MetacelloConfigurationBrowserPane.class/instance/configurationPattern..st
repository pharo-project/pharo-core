accessing
configurationPattern: aPattern
	"Sets a filter pattern"
	
	configurationPattern := aPattern.

	 self configurationList items: 
		(aPattern isNil ifTrue: [self configurations]
					    ifFalse: [self configurations select: [ :each| configurationPattern search: each ]]).

	self updateList
	
 