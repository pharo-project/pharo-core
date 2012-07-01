tests
testCreateWithNilEnvironment 
	"Tests materialization a class or trait not defined in the image, and with a nil in the instance variable 'environment ' "

	| aClassOrTrait materializedClassOrTrait |
	aClassOrTrait := self newClassOrTrait.
	aClassOrTrait environment: nil.
	
	materializedClassOrTrait := self resultOfSerializeRemoveAndMaterialize: aClassOrTrait.

	self assert:  materializedClassOrTrait basicEnvironment isNil.
