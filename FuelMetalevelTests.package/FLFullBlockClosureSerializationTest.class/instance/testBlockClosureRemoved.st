tests
testBlockClosureRemoved
	"Raise an error when materializing a closure whose method was removed."

  	| aClass aClosure materializedClosure |	
	aClass :=  self newClass
		duringTestCompileSilently: 'methodWithClosure  ^[41]';
		yourself.
	aClosure := aClass new perform: #methodWithClosure.

	self analyzer considerInternalMethod: aClass >> #methodWithClosure.
	self serialize: aClosure.

	aClass removeSelectorSilently: #methodWithClosure.
	
	materializedClosure := self materialized.

	self assert: materializedClosure value = 41