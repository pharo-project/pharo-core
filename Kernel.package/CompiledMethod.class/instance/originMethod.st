accessing
originMethod
	| selector |
	
	self properties 
		at: #traitSource 
		ifPresent: [ :traitMethod | ^ traitMethod ].
	
	"Use the method dictionary because traits do not have method for accesing methods by selector"
	
	selector := self methodClass traitComposition originSelectorOf: self selector.
	^ (self methodClass traitOrClassOfSelector: selector) methodDict at: selector. 