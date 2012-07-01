tests
testBlockClosureWithNotInstalledMethod

  	| aClass aClosure materializedClosure |
	aClass :=  self newClass
		duringTestCompileSilently: 'methodWithClosure  ^ [ 42 ]';
		yourself.		
	aClosure := aClass new methodWithClosure.
	aClass duringTestCompileSilently: 'methodWithClosure  ^ [ 41 ]'.

	self deny: aClosure method isInstalled.
	materializedClosure := self resultOfSerializeAndMaterialize: aClosure.
	self assert: materializedClosure value = 42.