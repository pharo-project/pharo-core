debugTest: aMethod
	| context process |
	context := [ :value | 
	[ value run ]
		ensure: [ 
			UIManager default uiProcess == Processor activeProcess
				ifFalse: [ Processor activeProcess terminate ] ] ] asContext.
	context
		pop;
		push: (self buildTestSuiteFor: aMethod).
	[ context isNil or: [ context selector = aMethod selector ] ]
		whileFalse: [ 
			context := context selector = #setUp
				ifTrue: [ context quickStep ]
				ifFalse: [ context step ] ].
	context isNil
		ifTrue: [ ^ UIManager default inform: 'Unable to open debugger on #' , aMethod selector ].
	process := Process forContext: context priority: Processor userInterruptPriority.
	Smalltalk tools debugger
		openOn: process
		context: context
		label: 'Debug ' , aMethod methodClass name , '>>#' , aMethod selector
		contents: nil
		fullView: true