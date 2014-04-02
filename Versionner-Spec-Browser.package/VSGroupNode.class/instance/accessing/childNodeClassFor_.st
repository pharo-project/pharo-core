childNodeClassFor: anItem
	"Use a specific wrapper node to display different icons."
	
	^ (self content project dependencyNamed: anItem) 
		ifNil: [ VSGroupLeafNode] "can be nil for 'default' or 'ALL'"
		ifNotNilDo: [ :dependency | dependency treeNodeClass ]