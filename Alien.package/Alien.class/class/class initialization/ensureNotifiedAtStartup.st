ensureNotifiedAtStartup
	"Alien needs to be notified at system startup to clear the LoadedLibraries table
	and otherwise sanitise Aliens with dangling pointers."
	self ~~ Alien ifTrue: [^self].
	(Smalltalk at: #SessionManager 
		ifAbsent: [ ^ Smalltalk addToStartUpList: self after: Alien ])
		default 
			registerSystemClassNamed: self name 
			atPriority: 60