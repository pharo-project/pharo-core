tests
testComposedBy
	"tests the #isComposedBy: aTrait method"
	
	self 
		should: [ Object isComposedBy: Object ]
		raise: Error.
	self deny: (Object isComposedBy: TSortable).
	self deny: (Object new isComposedBy: TSortable).
	self assert: (SequenceableCollection isComposedBy: TSortable).
	self assert: (SequenceableCollection new isComposedBy: TSortable).