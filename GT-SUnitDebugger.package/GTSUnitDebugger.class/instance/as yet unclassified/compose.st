compose
	"give the window a dedicated reddish color to ensure it gets noticed"
	self class enableDebuggerWindowDistinctColor ifTrue: [ 
		self color: (Color r: 1.0 g: 0.3 b: 0.3) ].
	self installDebuggingActionsFor: self.
	self dynamic display: [ :session |
		GLMTabulator new 
			with: [ :browser | 
				self debuggerStructureIn: browser.
				self debuggerTransmissionsIn: browser ];
			startOn: session;
			yourself ].
	self registerActions