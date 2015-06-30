accept: source notifying: aController
	| protocol method |
	RBConfigurableFormatter formatOnAccept
		ifTrue: [ self model sourceTextArea formatSourceCode ].
	protocol := self model selectedCategory.
	method := self model selectedMethod.
	protocol ifNil: [ protocol := method ifNil: [ Protocol unclassified ] ifNotNil: [ method protocol ] ].
	self model compileAMethodFromCategory: protocol withSource: source notifying: aController