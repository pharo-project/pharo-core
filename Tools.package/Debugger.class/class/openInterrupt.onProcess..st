opening
openInterrupt: aString onProcess: interruptedProcess 
	"Open a notifier in response to an interrupt. An interrupt occurs when
	the user types the interrupt key (cmd-. on Macs, ctrl-c or alt-. on other
	systems) or when the low-space watcher detects that memory is low."
	| debugger |
	<primitive: 19>
	"Simulation guard"
	debugger := self new.
	debugger
		process: interruptedProcess
		controller: nil
		context: interruptedProcess suspendedContext.
	debugger externalInterrupt: true.
	self logDebuggerStackToFile
		ifTrue: [(aString includesSubstring: 'Space')
					& (aString includesSubstring: 'low')
				ifTrue: [Smalltalk
						logError: aString
						inContext: debugger interruptedContext ]].
	^ debugger openNotifierContents: nil label: aString