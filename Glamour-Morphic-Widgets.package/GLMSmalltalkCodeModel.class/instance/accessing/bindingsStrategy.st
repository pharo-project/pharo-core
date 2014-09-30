bindingsStrategy

	^ bindingsStrategy ifNil: [ bindingsStrategy := self defaultBindingsStrategy ]