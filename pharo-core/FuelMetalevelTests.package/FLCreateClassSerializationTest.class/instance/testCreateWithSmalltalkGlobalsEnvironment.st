tests
testCreateWithSmalltalkGlobalsEnvironment 
	"Tests materialization a class or trait not defined in the image, and with Smalltalk globals  in the instance variable 'environment '. In that case, the whole Smalltalk globals should NOT be fully serialized but instead just store a reference to it. "

	| aClassOrTrait materializedClassOrTrait category name |
	aClassOrTrait := self newClassOrTrait.
	aClassOrTrait environment: Smalltalk globals.
	category := aClassOrTrait category.
	name := aClassOrTrait name.
	
	materializedClassOrTrait := self resultOfSerializeRemoveAndMaterialize: aClassOrTrait.

	self assert:  materializedClassOrTrait basicEnvironment == Smalltalk globals.

	"Classes are not direclty inserted in the system organization so we can only test #basicCategory and not #category."
	self assert: category = materializedClassOrTrait basicCategory.
	self assert: name = materializedClassOrTrait name.

