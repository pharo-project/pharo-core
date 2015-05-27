visitNode: aNode
	"here we add the hook anotations and visit those AST parts for semantic analysis"

	super visitNode: aNode.
	aNode hasMetalink
		ifFalse: [ ^ self ].
	aNode propertyAt: #beforeHooks put: IdentitySet new.
	aNode propertyAt: #afterHooks put: IdentitySet new.
	aNode beforeLinks
		do: [ :link | 
			| before |
			before := link hookOn: aNode.
			aNode beforeHooks add: before.
			self visitNode: before ].
	aNode afterLinks
		do: [ :link | 
			| after |
			after := link hookOn: aNode.
			aNode afterHooks add: after.
			self visitNode: after ]