basicCheck: aMethod
	^ aMethod messages anySatisfy: [ :each | (self implementorsExists: each) not ]