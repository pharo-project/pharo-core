executeDeferredStartupActions: resuming
	"Execute the deferred actions which where added during startup, resuming is true if the iage was started fresh, false if we just saved an image"

	| errors |
	
	deferredStartupActions ifNil: [^ #()].
	
	errors := OrderedCollection new.	
		
	deferredStartupActions do: [:each |
		self 
			logStartUpErrorDuring: [ each cull: resuming ] 
			into: errors
			tryDebugger: self isInteractive].
		
	^ errors