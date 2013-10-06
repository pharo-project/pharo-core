windowIsClosing
	"My window is being closed; clean up. Restart the low space watcher."

	interruptedProcess == nil ifTrue: [^ self].
	interruptedProcess terminate.
	interruptedProcess := nil.
	contextStack := nil.
	contextStackTop := nil.
	receiverInspector := nil.
	contextVariablesInspector := nil.
	Smalltalk installLowSpaceWatcher.  "restart low space handler"
