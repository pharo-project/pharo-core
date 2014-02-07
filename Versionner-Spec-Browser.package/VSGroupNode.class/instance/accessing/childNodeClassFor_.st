childNodeClassFor: anItem
	"Use a specific wrapper node to display different icons."
	
	^ (self content project dependencyNamed: anItem) treeNodeClass