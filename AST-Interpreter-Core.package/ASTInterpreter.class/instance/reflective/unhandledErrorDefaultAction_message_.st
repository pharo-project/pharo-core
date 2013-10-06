unhandledErrorDefaultAction: anUnhandledError  message: aMessage

	^ InterpretationError signalFor: anUnhandledError exception.