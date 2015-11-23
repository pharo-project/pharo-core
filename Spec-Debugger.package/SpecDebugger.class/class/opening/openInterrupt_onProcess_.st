openInterrupt: aString onProcess: interruptedProcess
	"Open a notifier in response to an interrupt. An interrupt occurs when
	the user types the interrupt key (cmd-. on Macs, ctrl-c or alt-. on other
	systems) or when the low-space watcher detects that memory is low."

	<primitive: 19>
	| debugger |
	debugger := self new.
	"Simulation guard"
	debugger
		process: interruptedProcess
		context: interruptedProcess suspendedContext.
	self logDebuggerStackToFile
		ifTrue:
			[ (aString includesSubstring: 'Space')
				& (aString includesSubstring: 'low')
				ifTrue:
					[ Smalltalk
						logError: aString
						inContext: debugger interruptedContext ] ].
	^ debugger openNotifierContents: nil label: aString