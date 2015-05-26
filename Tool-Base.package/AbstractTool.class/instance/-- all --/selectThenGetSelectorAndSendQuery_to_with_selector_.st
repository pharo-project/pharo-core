selectThenGetSelectorAndSendQuery: querySelector to: queryPerformer with: queryArgs selector: aSelector
	"Obtain a selector relevant to the current context, and then send the querySelector to the queryPerformer with the selector obtained and queryArgs as its arguments.  If no message is currently selected, then obtain a method name from a user type-in"
	| strm array |
	
	strm := (array := Array new: queryArgs size + 1) writeStream.
	strm nextPut: nil.
	strm nextPutAll: queryArgs.
	
	aSelector ifNil: [ ^ self 
						defaultGetSelectorAndSendQuery: querySelector
						to: queryPerformer
						with: array ].
	self
		selectMessageAndEvaluate: [ :selector | 
			array at: 1 put: selector.
			queryPerformer perform: querySelector withArguments: array ]
		defaultValue: aSelector