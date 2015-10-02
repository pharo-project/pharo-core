addMetalinkStyle: aNode from: start to: stop
	|rejectClass|
	
	rejectClass := { RBMethodNode . RBSequenceNode }.
	(rejectClass includes: aNode class) ifTrue: [ ^self ]. "do nothing" 
	aNode hasBeenExecuted ifTrue: [  super addMetalinkStyle: aNode from: start to: stop]