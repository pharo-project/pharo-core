reestablishContextPriorToCallback: callbackContext
	"callbackContext is an activation of invokeCallback:stack:registers:jmpbuf:.  Its sender
	 is the interpreter's state prior to the callback.  Reestablish that state."
	
	"WARNING!! do not use any proxy functions, which may 
	access the ST stack after calling this function, because its changing the active context
	and method, stack etc.
	
	Use at your own risk"
	^ self simpleCall