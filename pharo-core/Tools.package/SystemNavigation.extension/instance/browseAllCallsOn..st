*Tools-Browser
browseAllCallsOn: aLiteral 
	"Create and schedule a message browser on each method that refers to 
	aLiteral. For example, SystemNavigation new browseAllCallsOn: #open:label:."

	^ self headingAndAutoselectForLiteral: aLiteral do:
		[:label :autoSelect|
		self
			browseMessageList: (self allCallsOn: aLiteral) asSortedCollection
			name: label
			autoSelect: autoSelect]