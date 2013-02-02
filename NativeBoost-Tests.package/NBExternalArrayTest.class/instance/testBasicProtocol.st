testing - instances
testBasicProtocol

	| cls array |
	
	cls := self apiClass ofType: 'int32' .
		
	array := cls new: 10.
	
	self assert: array size equals: 10.
	
	"instantiating with #new: should create an array in object memory "
	self assert: array isExternal equals: false.
	
	self assert: (array at: 1 put: 42) equals: 42.
	self assert: (array at: 1) equals: 42.
	
	self assert: (array at: 10 put: 420) equals: 420.
	self assert: (array at: 10) = 420.
	
	