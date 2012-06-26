tests
testCreateSharedPoolClass
	"Tests materialization of a shared pool class not defined in the image (NOTE: it will be an identity problem if it isn't a Smalltalk global')"
	
	|  materializedClass aClass sharedPool |
	sharedPool := self newClassOrTraitWithSuperClass: SharedPool.
	sharedPool addClassVarNamed: 'ClassVar1'.
	sharedPool class duringTestCompileSilently: 'classVar1: a  ClassVar1 := a. '.
	sharedPool class duringTestCompileSilently: 'classVar1 ^  ClassVar1 '.
	
	sharedPool perform: #classVar1: with: #foo.

	materializedClass := self resultOfSerializeRemoveAndMaterialize: sharedPool.

	self assert: (materializedClass perform: #classVar1) = #foo.
	