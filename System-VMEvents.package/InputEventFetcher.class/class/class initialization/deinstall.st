deinstall
	"InputEventFetcher deinstall"

	Default
		ifNotNil: [
			Default shutDown.
			Smalltalk removeFromStartUpList: Default class.
			Smalltalk removeFromShutDownList: Default class.
			SessionManager default unregisterClassNamed: Default class name.
			Default := nil].
	Smalltalk removeFromStartUpList: self.
	Smalltalk removeFromShutDownList: self.
	SessionManager default unregisterClassNamed: self name