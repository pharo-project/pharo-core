tests
testCreateBasic
	"Tests materialization a class or trait not defined in the image."

	| aClassOrTrait materializedClassOrTrait environment category name |
	aClassOrTrait := self newClassOrTrait.
	environment := aClassOrTrait environment.
	category := aClassOrTrait category.
	name := aClassOrTrait name.
	
	materializedClassOrTrait := self resultOfSerializeRemoveAndMaterialize: aClassOrTrait.

	self deny: aClassOrTrait == materializedClassOrTrait. 
	self assert: environment == materializedClassOrTrait environment.
	"Classes are not direclty inserted in the system organization so we can only test #basicCategory and not #category."
	self assert: category = materializedClassOrTrait basicCategory.
	self assert: name = materializedClassOrTrait name.

     "It is important to notice that Fuel does not add the materialized class or trait into Smalltalk globals."
    self deny: (Smalltalk globals includesKey: name).
