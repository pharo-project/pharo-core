asserting
assertMethodChunkIsWellFormed: chunk
	self class parserClass new
		parse: chunk readStream 
		class: UndefinedObject 
		noPattern: false
		context: nil
		notifying: nil
		ifFail: [self assert: false]