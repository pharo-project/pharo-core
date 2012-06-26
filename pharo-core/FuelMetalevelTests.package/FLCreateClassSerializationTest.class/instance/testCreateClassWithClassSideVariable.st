tests
testCreateClassWithClassSideVariable
	"Tests materialization a class not defined in the image, with a class-side instance variable."
	
	| aClass materializedClass |	
	aClass := self newClassOrTrait.
	aClass class addInstVarNamed: 'a'.
	aClass instVarNamed: 'a' put: #test.

	materializedClass := self resultOfSerializeRemoveAndMaterialize: aClass.

	self assert: 1 = materializedClass class instVarNames size.
	self assert: (materializedClass class instVarNames includes: 'a').
	self assert: #test = (materializedClass instVarNamed: 'a').