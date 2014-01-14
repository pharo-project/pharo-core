testExternalArray

	| cls array |
	
	cls := self apiClass ofType: 'int32' .
		
	[ array := cls externalNew: 10.
	
	self assert: array size equals: 10.
	
	"instantiating with #externalNew: should create an array in external memory "
	self assert: array isExternal equals: true.
	
	self assert: (array at: 1 put: 42) equals: 42.
	self assert: (array at: 1) equals: 42.
	
	self assert: (array at: 10 put: 420) equals: 420.
	self assert: (array at: 10) = 420.
	] ensure: [ array free ] 
	