initialize
	SmalltalkImage current addToStartUpList: self before: Delay.
	SessionManager default registerSystemClassNamed: self name atPriority: 10.
	self startUp: true