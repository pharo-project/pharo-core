testAnonymousClassCreation

	| cls |
	
	cls := self apiClass ofType: 'int32' .
	
	"should get an anonymous subclass" 
	self assert: (cls inheritsFrom: self apiClass).
	
	".. with properly initialized values" 
	self assert: cls elementType equals: 'int32'.
	self assert: cls elementSize = 4 .
	
	" and, of course, they should not be the same object" 
	self assert: cls ~~ self apiClass.
	