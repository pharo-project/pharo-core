*FuelPackageLoader
rebindOn: aCompiledMethod at: index
	"If the CompiledMethod was saved with a reference to a class that does exist, then its calculated binding will be nil. In that case we prefer to keep the original association."
	key isNil ifTrue: [^ self].
	(aCompiledMethod methodClass bindingOf: key)
		ifNotNil: [:aBinding |
			aCompiledMethod literalAt: index put: aBinding]