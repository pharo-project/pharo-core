tests
testCompiledMethodClassBinding
	"The class binding of each CM has to point to a correct Association, which should not be added to Smalltalk globals."
	
	| aClassOrTrait materializedClassOrTrait className method1 method2 |	
	aClassOrTrait := self newClassOrTrait.
	aClassOrTrait duringTestCompileSilently: 'fortyTwo ^42'.
	aClassOrTrait duringTestCompileSilently: 'fortyThree ^43'.
	className := aClassOrTrait name.

	materializedClassOrTrait := self resultOfSerializeRemoveAndMaterialize: aClassOrTrait.
	method1 := materializedClassOrTrait compiledMethodAt: #fortyTwo.
	method2 := materializedClassOrTrait compiledMethodAt: #fortyThree.

	self assert: className = method1 methodClass name.
	self assert: className = method2 methodClass name.
	self assert: method1 classBinding == method2 classBinding.
	self deny: (Smalltalk globals includesKey: className asSymbol)