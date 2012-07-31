*Tools-Browser
browseAllCallsOn: aLiteral 
	"Create and schedule a message browser on each method that refers to 
	aLiteral. For example, SystemNavigation new browseAllCallsOn: #printOn:."

	^ self openBrowserFor: aLiteral withMethods: (self allCallsOn: aLiteral) asSortedCollection 