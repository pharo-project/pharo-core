node: aNode link: aLink
	reifications := OrderedCollection new.
	table := Dictionary new.
	plugins := Dictionary new.
	node := aNode.
	link := aLink.
	
	"register all the plugins that can reify information for this node"
	RFReification subclasses do: [:plugin |
		(plugin nodes anySatisfy: [:class | node isKindOf: class])	 ifTrue: [
			plugins at: plugin key put: (plugin node: node link: link)]
		]