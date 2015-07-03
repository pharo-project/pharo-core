node: aNode links: aCollection
	plugins := Dictionary new.
	node := aNode.
	links := aCollection.
	
	"register all the plugins that can reify information for this node"
	RFReification subclasses do: [:plugin |
		(plugin nodes anySatisfy: [:class | node isKindOf: class])	 ifTrue: [
			plugins at: plugin key put: plugin]
		].
