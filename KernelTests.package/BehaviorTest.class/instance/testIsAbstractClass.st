tests
testIsAbstractClass
	self deny: Object isAbstractClass.
	self deny: Object class isAbstractClass.
		
	"Behavior has abstract methods, for example hasTraitComposition, basicLocalSelectors:"
	self assert: Behavior isAbstractClass.
	self assert: Behavior class isAbstractClass.
	
	"AbstractEvent does not have an abstract method, but its class yes"
	"AbstractEvent class>>changeKind is abstract, therefore the class is abstract"
	self assert: DiskStore isAbstractClass.
	self assert: DiskStore class isAbstractClass.
	
	