private
primitiveExecute
	definedClass := self definitionClass compilerClass
		evaluate: self definition
		notifying: self controller
		logged: true