createMethodFor: aCFunctionDefinition
	"find the function name"

	| typeAndName spec source cat |
	"the parameter list follows the fn name "
	spec := NBFnSpec namedFunctionFrom: aCFunctionDefinition.
	spec arguments size > 15
		ifTrue: [ 
			source := self createArrayedMethodFor: spec.
			cat := 'automatically generated arrayed' ]
		ifFalse: [ 
			source := self createSimpleMethodFor: spec.
			cat := 'automatically generated' ].
	self compile: source classified: cat