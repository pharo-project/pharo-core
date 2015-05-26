includesMethodReference: aMethodReference
	^self packages anySatisfy: [ :each | 
		each includesMethodReference: aMethodReference ]