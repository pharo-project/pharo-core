interpretDoIt: ast
	| result |

	"set the source of the root context to the doIt code"
	self context method: ast source.

	[result := self interpret: ast] 
		on: VariableNotDefined do: [ :e|
		e context isRootContext
			ifFalse: [ e pass ]
			ifTrue: [ e createTemp; resume: true]].

	^ result