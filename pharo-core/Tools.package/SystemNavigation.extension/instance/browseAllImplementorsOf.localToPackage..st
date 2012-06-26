*Tools-Browser
browseAllImplementorsOf: selector localToPackage: packageNameOrInfo
	"Create and schedule a message browser on each method in the given package
	that implements the message whose selector is the argument, selector. For example, 
	SystemNavigation new browseAllImplementorsOf: #at:put: localToPackage: 'Collections'."

	^ self browseMessageList: (self
								allImplementorsOf: selector
								localToPackage: packageNameOrInfo) asSortedCollection
		name: 'Implementors of ' , selector,
				' local to package ', (self packageInfoFor: packageNameOrInfo) name