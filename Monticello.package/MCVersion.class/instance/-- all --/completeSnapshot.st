completeSnapshot
	^ completeSnapshot ifNil: [ completeSnapshot := self loadCompleteSnapshot ]