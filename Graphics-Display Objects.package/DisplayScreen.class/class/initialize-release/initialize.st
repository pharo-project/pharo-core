initialize
	| display |
	display := self new.
	display
		setExtent: self actualScreenSize
		depth: (self actualScreenDepth ifNil: [ 2 ]).
	Smalltalk globals at: #Display put: display.
	display beDisplay.
	
	self deferUpdates: false.
	SessionManager default 
		registerGuiClassNamed: self name
		atPriority: 10.