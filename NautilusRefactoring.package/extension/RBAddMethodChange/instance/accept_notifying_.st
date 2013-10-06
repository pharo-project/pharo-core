accept: aText notifying: aController
	"Just to make sure that it compiles, try with the standard compiler."
	
	| compiler |
	compiler := self changeClass
		ifNil: [ Object compiler ]
		ifNotNil: [:changeClass | changeClass compiler ].
		
	compiler
		compile: aText asString in: self changeClass
		classified: nil notifying: aController
		ifFail: [ ^ false ].
		
	self 
		class: self changeClass
		protocol: self protocol
		source: aText asString.
		
	^ true