ensureNotifiedAtStartup
	"FFICallbackThunk needs to be notified at system startup to clear the ExecutablePages table."
	self ~~ FFICallbackThunk ifTrue: [^self].
	(Smalltalk at: #SessionManager 
		ifAbsent: [ ^ Smalltalk addToStartUpList: self after: Alien ])
		default 
			registerSystemClassNamed: self name 
			atPriority: 60
