analyseForLinks: aNode
	aNode propertyAt: #beforeHooks put: OrderedCollection new.
	aNode propertyAt: #afterHooks put: OrderedCollection new.
	aNode propertyAt: #insteadHooks put: OrderedCollection new.
	aNode propertyAt: #preambles put: OrderedCollection new.
	
	aNode hasMetalink
		ifFalse: [ ^ self ].

	aNode links do: [ :link | | preamble |
			preamble := link preambleOn: aNode.
			preamble ifNotNil: [
					(aNode propertyAt: #preambles) addAll: preamble.
					(aNode propertyAt: #preambles) do: [:each | each ifNotNil: [self visitNode: each]]]].
	aNode beforeLinks do: [ :link | 
			| before |
			before := link hookOn: aNode.
			aNode beforeHooks add: before.
			self visitNode: before ].
	aNode afterLinks do: [ :link | 
			| after |
			after := link hookOn: aNode.
			aNode afterHooks add: after.
			self visitNode: after ].
		
	aNode insteadLinks do: [ :link | 
			| after |
			after := link hookOn: aNode.
			aNode insteadHooks add: after.
			self visitNode: after ].