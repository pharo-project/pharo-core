tests
testCreateClassWithSharedPool
	"Tests materialization of a class not defined in the image, with a shared pool (NOTE: it will be an identity problem if it isn't a Smalltalk global')"
	
	| aClass materializedClass |	
	aClass := self newClassOrTrait.
	aClass addSharedPool: TextConstants.

	materializedClass := self resultOfSerializeRemoveAndMaterialize: aClass.

	self assert: 1 = (materializedClass sharedPools size).
	self assert: TextConstants == materializedClass sharedPools first.