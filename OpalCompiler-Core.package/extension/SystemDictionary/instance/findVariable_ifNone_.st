findVariable: lookupBlock ifNone: notFoundBlock
 
	self associationsDo: [ :assoc | | var |
		var := OCLiteralVariable new 
			assoc: assoc; 
			scope: self; 
			yourself.
		(lookupBlock value: var) ifTrue: [ ^ var ].
		 ].
	^ notFoundBlock value