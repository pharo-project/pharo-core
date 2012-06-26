tests
testCreateClassWithSharedPoolAndMethodReferencinAClassVariableOfIt
	"Tests materialization of a class not defined in the image, with a shared pool and a compiled method that referers to a class side variable of the  sharedPool (NOTE: it will be an identity problem if it isn't a Smalltalk global')"
	
	| aClass materializedClass sharedPool anObject |	
	
	aClass := self newClassOrTrait.
	anObject := Object new.
	
	sharedPool := self newClassOrTraitWithSuperClass: SharedPool.
	sharedPool addClassVarNamed: 'ClassVar1'.
	sharedPool class duringTestCompileSilently: 'classVar1: a  ClassVar1 := a. '.
	sharedPool class duringTestCompileSilently: 'classVar1 ^  ClassVar1 '.
	sharedPool perform: #classVar1: with: anObject.
	
	aClass addSharedPool: sharedPool.	
	aClass duringTestCompileSilently: 'xxx ^ ClassVar1.'.
	aClass class duringTestCompileSilently: 'yyy ^ ClassVar1.'.

	materializedClass := self resultOfSerializeRemoveAndMaterialize: aClass.

	self assert: 1 = (materializedClass sharedPools size).
	self assert: sharedPool == materializedClass sharedPools first.
	self assert:  ((materializedClass >> #xxx) literalAt: 1) value == (sharedPool classPool at: #ClassVar1).
	self assert:  ((materializedClass class >> #yyy) literalAt: 1) value == (sharedPool classPool at: #ClassVar1).
	self assert: (materializedClass new perform: #xxx) == anObject.
	self assert: (materializedClass perform: #yyy) == anObject.
	
	
 