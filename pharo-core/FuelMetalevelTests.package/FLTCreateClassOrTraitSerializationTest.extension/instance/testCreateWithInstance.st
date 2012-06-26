tests
testCreateWithInstance
	"Tests materialization of an internal class or trait together with an object using it."
	
	| aClassOrTrait materializedObjects objectsToSerialize |	
	aClassOrTrait := self newClassOrTrait.
	aClassOrTrait duringTestCompileSilently: 'fortyTwo ^42'.
	objectsToSerialize := Array 
		with: aClassOrTrait 
		with: (self newInstanceFrom: aClassOrTrait).

	materializedObjects := self resultOfSerializeRemoveAndMaterializeAll: objectsToSerialize.

	self assert: (materializedObjects first includesSelector: #fortyTwo).
	self assert: 42 = (materializedObjects second perform: #fortyTwo).