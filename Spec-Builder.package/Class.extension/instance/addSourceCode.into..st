*Spec-Builder
addSourceCode: source into: selector
	| method newSource |
	method := self methodDict at: selector asSymbol ifAbsent: [ ^ self ].
	newSource := String streamContents: [:s |
		s << method sourceCode << '.' ; cr ; tab ;<< source ].
	self compileWithoutReturn: newSource classified: method category