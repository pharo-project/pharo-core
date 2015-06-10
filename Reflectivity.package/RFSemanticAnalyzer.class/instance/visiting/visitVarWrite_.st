visitVarWrite: aNode
	"here we add the hook anotations and visit those AST parts for semantic analysis"
	aNode propertyAt: #beforeHooks put: IdentitySet new.
	aNode propertyAt: #afterHooks put: IdentitySet new.
	aNode propertyAt: #preambles put: IdentitySet new.
	
	
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
			self visitNode: after ]