environment
	^ environment ifNil: [ environment := self createEnvironment ]