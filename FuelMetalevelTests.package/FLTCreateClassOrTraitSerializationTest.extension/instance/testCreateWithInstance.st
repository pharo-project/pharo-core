tests
testCreateWithInstance
	"Tests materialization of an internal class or trait together with an object using it."
	
	| aClassOrTrait materializedObjects objectsToSerialize anInstance |
	aClassOrTrait := self newClassOrTrait.
	aClassOrTrait duringTestCompileSilently: 'fortyTwo ^42'.
	anInstance := self newInstanceFrom: aClassOrTrait.
	objectsToSerialize := Array 
		with: aClassOrTrait 
		with: anInstance
		with: anInstance class.

	materializedObjects := self resultOfSerializeRemoveAndMaterializeAll: objectsToSerialize.

	self assert: (materializedObjects first includesSelector: #fortyTwo).
	self assert: 42 = (materializedObjects second perform: #fortyTwo).