current

	^ CurrentManager ifNil: [ CurrentManager := self new ]