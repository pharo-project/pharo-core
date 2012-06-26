initialize-release
initializeWith: aCompiledMethod

	self initialize.
	method := aCompiledMethod.
	category := aCompiledMethod category.