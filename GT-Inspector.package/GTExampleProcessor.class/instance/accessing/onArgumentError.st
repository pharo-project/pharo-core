onArgumentError
	^ onArgumentError ifNil: [ onArgumentError := self defaultOnArgumentError ]