hierarchyClassTree

^{
	self . 

	( self subclasses 
	reject: [ :class | class isClassSide ] 
	thenCollect: [ :cls | cls hierarchyClassTree ]
	) sorted: [ :a :b | a first printString <= b first printString ]
} 