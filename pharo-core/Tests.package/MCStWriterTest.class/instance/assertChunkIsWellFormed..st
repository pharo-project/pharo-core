asserting
assertChunkIsWellFormed: chunk
	self class parserClass new
		parse: chunk readStream 
		class: UndefinedObject 
		noPattern: true
		context: nil
		notifying: nil
		ifFail: [self assert: false]