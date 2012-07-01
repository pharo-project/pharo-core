private-exceptions
unwindTo: aContext

	| ctx unwindBlock |
	ctx := self.
	[(ctx := ctx findNextUnwindContextUpTo: aContext) isNil] whileFalse: [
		(ctx tempAt: 2) ifNil:[
			ctx tempAt: 2 put: true.
			unwindBlock := ctx tempAt: 1.
			unwindBlock value]
	].
