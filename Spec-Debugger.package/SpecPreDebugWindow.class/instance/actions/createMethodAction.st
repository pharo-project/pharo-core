createMethodAction

	"The create method from the session will trigger #contextChanged, which will
	make the debgger update the stack. Sof it safe to just open the debugger."
	self session createMethodInContext: self debugger interruptedContext.
	self debugAction