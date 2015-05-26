findVariable: lookupBlock ifNone: notFoundBlock 
	| var |
	class classPool associationsDo: [ :assoc |
		var := OCLiteralVariable new 
			assoc: assoc; 
			scope: self; 
			yourself.
			
		(lookupBlock value: var) ifTrue: [ ^ var ].
		 ].
	
	class sharedPools do: [ :pool |
		pool classPool associationsDo: [ :assoc | 
			var := OCLiteralVariable new 
			assoc: assoc; 
			scope: self; 
			yourself.
			(lookupBlock value: var) ifTrue: [ ^ var ].
			 ].
		 ].

	^ class environment findVariable: lookupBlock ifNone: notFoundBlock 
