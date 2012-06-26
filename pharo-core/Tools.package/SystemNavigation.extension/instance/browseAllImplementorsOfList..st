*Tools-Browser
browseAllImplementorsOfList: selectorList
	"Create and schedule a message browser on each method that implements 
	the message whose selector is in the argument selectorList. For example, 
		SystemNavigation default browseAllImplementorsOfList: #(at:put: size)."

	^ self browseAllImplementorsOfList: selectorList title: 'Implementors of all'