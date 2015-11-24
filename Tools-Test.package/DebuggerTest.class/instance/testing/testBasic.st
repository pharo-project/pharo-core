testBasic
	| context process debugger printedString |
	context := [ 20 factorial ] asContext.
	process := Process
		forContext: context
		priority: Processor userInterruptPriority.
	debugger := Smalltalk tools debugger on: (process newDebugSessionNamed: 'test debugging' startedAt: context).
	debugger stack expand.
	self assert: debugger stack selectedIndex = 1.
	printedString := OpalCompiler isActive
		ifTrue: [ '[ 20 factorial ] in DebuggerTest>>testBasic' ]
		ifFalse: [ '[...] in DebuggerTest>>testBasic' ].
	self assert: debugger stack selectedItem printString = printedString.
	debugger send.
	debugger send.
	self
		assert: debugger code getText = (Integer >> #factorial) sourceCode.
	self
		assert:
			debugger stack selectedItem printString
				= 'SmallInteger(Integer)>>factorial'.
	process terminate