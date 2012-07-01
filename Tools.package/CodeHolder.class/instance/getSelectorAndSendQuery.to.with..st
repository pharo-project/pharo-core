misc
getSelectorAndSendQuery: querySelector to: queryPerformer with: queryArgs
	"Obtain a selector relevant to the current context, and then send the querySelector to the queryPerformer with the selector obtained and queryArgs as its arguments.  If no message is currently selected, then obtain a method name from a user type-in"

	| strm array |
	strm := (array := Array new: queryArgs size + 1) writeStream.
	strm nextPut: nil.
	strm nextPutAll: queryArgs.

	self selectedMessageName ifNil: [ | selector |
		selector := UIManager default request: 'Type selector:' initialAnswer: 'flag:'.
		selector ifNil: [selector := String new].
		selector := selector copyWithout: Character space.
		^ selector isEmptyOrNil ifFalse: [
			(Symbol hasInterned: selector
				ifTrue: [ :aSymbol |
					array at: 1 put: aSymbol.
					queryPerformer perform: querySelector withArguments: array])
				ifFalse: [ self inform: 'no such selector']
		]
	].

	self selectMessageAndEvaluate: [:selector |
		array at: 1 put: selector.
		queryPerformer perform: querySelector withArguments: array
	]