exceptionHandler
	^ exceptionHandler ifNil: [ exceptionHandler := self defaultExceptionHandler ]