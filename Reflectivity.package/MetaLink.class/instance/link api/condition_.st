condition: aCondition
	condition:= aCondition.
	nodes do: [ :node | 
		(node methodNode metaLinkOptionsFromClassAndMethod includes: #optionInlineCondition) ifTrue: [ self invalidate ] ].
	self optionInlineCondition ifTrue: [self invalidate].

	
