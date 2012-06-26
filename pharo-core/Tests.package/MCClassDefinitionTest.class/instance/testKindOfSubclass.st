tests
testKindOfSubclass
	| classes |
	classes := {self mockClassA. String. MethodContext. WeakArray. Float}.
	classes do: [:c | | d |
		d :=  c asClassDefinition.
		self assert: d kindOfSubclass = c kindOfSubclass.
	].