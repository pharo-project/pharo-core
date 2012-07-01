tests
testBlockClosureChangeDifferentBytecodes
	"Undesired behavior: Using full mappers, all compiled methods are never serialized as globals"

  	| aClass aClosure materializedClosure |	
	aClass :=  self newClass
		duringTestCompileSilently: 'methodWithClosure  ^ [ 42 ]';
		yourself.
	aClosure := aClass new perform: #methodWithClosure.
	
	self analyzer considerInternalMethod: aClass >> #methodWithClosure.
	self serialize: aClosure.

	aClass duringTestCompileSilently: 'methodWithClosure  ^42'.
	materializedClosure := self materialized.

	self assert: materializedClosure value = 42