openNotifierContents: msgString label: label
	"Create and schedule a notifier view with the given label and message.
	A notifier view shows just the message or the first several lines of the
	stack, with a menu that allows the user to open a full debugger if so
	desired. "

	"NOTE: When this method returns, a new process has been scheduled to
	run the windows, and thus this notifier, but the previous active porcess
	has not been suspended. The sender will do this."
	| msg |

	msg := (label beginsWith: 'Space is low')
		ifTrue: [ self lowSpaceChoices , (msgString ifNil: [ '' ]) ]
		ifFalse: [ msgString ].
		
	SpecPreDebugWindow new 
		setTitle: label;
		message: msg;
		openWithSpec;
		debugger: self.

	self session errorWasInUIProcess: (UIManager default spawnNewProcessIfThisIsUI: self interruptedProcess)