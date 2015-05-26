port

	^ port ifNil: [ port := self defaultPort ]