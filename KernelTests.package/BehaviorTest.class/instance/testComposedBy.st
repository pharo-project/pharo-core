tests
testComposedBy
	"tests the #isComposedBy: aTrait method"
	
	self 
		should: [ Object isComposedBy: Object ]
		raise: Error.
	self deny: (Object isComposedBy: TAbleToRotate).
	self deny: (Object new isComposedBy: TAbleToRotate).
	self assert: (CircleMorph isComposedBy: TAbleToRotate).
	self assert: (CircleMorph new isComposedBy: TAbleToRotate).