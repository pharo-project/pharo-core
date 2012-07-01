enumerating
actualMethodsDo: aBlock
	"Evaluate aBlock with the actual method objects in this package."
	| enum |
	self extensionMethods do:
		[:mr|
		aBlock value: mr compiledMethod].
	enum := [:behavior|
			behavior organization categories do:
				[:cat|
				(self isForeignClassExtension: cat) ifFalse:
					[(behavior organization listAtCategoryNamed: cat) do:
						[:s|
						aBlock value: (behavior compiledMethodAt: s)]]]].
	self classes do:
		[:c| enum value: c; value: c classSide]
		