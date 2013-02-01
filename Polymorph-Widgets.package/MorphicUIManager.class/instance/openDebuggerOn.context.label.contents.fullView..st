ui requests
openDebuggerOn: process context: context label: title contents: contentsStringOrNil fullView: bool 
	"Open a notifier in response to an error, halt, or notify. A notifier view
	just shows a short view of the sender stack and provides a menu that
	lets the user open a full debugger."
	| errorWasInUIProcess  debugger |
	errorWasInUIProcess := self spawnNewProcessIfThisIsUI: process.
	[Smalltalk tools debugger logDebuggerStackToFile
		ifTrue: [Smalltalk
				logError: title
				inContext: context ]] on: Error do: [].
	debugger := Smalltalk tools debugger new.
	self defer: [[ 
			debugger
				process: process
				controller: nil
				context: context.
			"schedule debugger in deferred UI message to address
			redraw problems after opening a debugger e.g. from
			the testrunner."
			"self defer: ["
			bool
				ifTrue: [debugger openFullNoSuspendLabel: title]
				ifFalse: [debugger openNotifierContents: contentsStringOrNil label: title].
			debugger errorWasInUIProcess: errorWasInUIProcess.]
				on: Error
				do: [:ex | Debugger primitiveError: 'Orginal error: ' , title asString , '.
	Smalltalk tools debugger error: '
							, ([ex description]
									on: Error
									do: ['a ' , ex class printString]) , ':']].

	process suspend.
	^ debugger