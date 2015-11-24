in: aRBProgramNode named: aName
	|watchpoint|
	watchpoint := self new 
						node: aRBProgramNode;
						tagname: aName;
						install;
						yourself.
	^watchpoint.