acceptCascadeNode: aCascadeNode
	| receiver lastResult |
	
	receiver := self interpret: aCascadeNode receiver.
	
	aCascadeNode messages do: [ :aMessageNode|
		lastResult := self acceptMessageNode: aMessageNode receiver: receiver.
		self ifSkip: [ ^ lastResult ]].
	
	^ lastResult