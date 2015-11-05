testDoIt
	"Serialization of DoIt methods should be possible by default."
	
	| context |
	self skip. "does not terminate sometimes"
	[ Smalltalk evaluate: 'self error' ]
		on: Error 
		do: [:error | context:= error signalerContext copyStack ].
	
	self serialize: context