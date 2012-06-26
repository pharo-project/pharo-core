handling
defaultAction
	Log 
		ifNotNil: [:log | log add: self].
	self showWarning 
		ifTrue: [Transcript nextPutAll: self messageText; cr; flush].
	self raiseWarning 
		ifTrue: [super defaultAction]