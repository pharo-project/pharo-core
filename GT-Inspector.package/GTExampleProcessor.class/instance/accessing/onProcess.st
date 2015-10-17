onProcess
	^ onProcess ifNil: [ onProcess := self defaultOnProcess ]