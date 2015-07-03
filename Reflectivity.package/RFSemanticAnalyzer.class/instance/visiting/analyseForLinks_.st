analyseForLinks: aNode
	| generator |
	aNode propertyAt: #beforeHooks put: OrderedCollection new.
	aNode propertyAt: #afterHooks put: OrderedCollection new.
	aNode propertyAt: #insteadHooks put: OrderedCollection new.
	
	
	aNode hasMetalink
		ifFalse: [ ^ self ].
	generator := HookGenerator2 node: aNode.

	aNode propertyAt: #preambles put: generator preamble.
	aNode preambles do: [:each | self visitNode: each].
	
	aNode propertyAt: #beforeHooks put: generator beforeHooks.
 	aNode beforeHooks do: [:each | self visitNode: each].
	
	aNode propertyAt: #afterHooks put: generator afterHooks.
 	aNode beforeHooks do: [:each | self visitNode: each].
	
	aNode propertyAt: #insteadHooks put: generator insteadHooks.
 	aNode insteadHooks do: [:each | self visitNode: each].	
	