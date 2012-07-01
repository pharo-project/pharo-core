tests
testCreateClassWithSharedPoolAndMethodReferencingIt
	"Tests materialization of a class not defined in the image, with a shared pool and a compiled method that referers to an Association with such sharedPool (NOTE: it will be an identity problem if it isn't a Smalltalk global')"
	
	| aClass materializedClass sharedPool |	
	aClass := self newClassOrTrait.
	sharedPool := self newClassOrTraitWithSuperClass: SharedPool.
	aClass addSharedPool: sharedPool.
	aClass class duringTestCompileSilently: 'initialize ', sharedPool name asString, ' name.'.

	materializedClass := self resultOfSerializeRemoveAndMaterialize: aClass.

	self assert: 1 = (materializedClass sharedPools size).
	self assert: sharedPool == materializedClass sharedPools first.
	self assert:  ((materializedClass class >> #initialize) literalAt: 2) value == sharedPool.
	
 