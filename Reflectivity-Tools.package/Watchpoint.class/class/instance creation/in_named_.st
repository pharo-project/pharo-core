in: aRBProgramNode named: aName
	|watchpoint|
	
	aRBProgramNode hasWatchpoint ifTrue: [ ^ aRBProgramNode watchpoint ].
	
	watchpoint := self new 
						node: aRBProgramNode;
						tagname: aName;
						install;
						yourself.
	^watchpoint.