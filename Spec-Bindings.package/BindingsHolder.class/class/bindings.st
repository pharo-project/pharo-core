accessing
bindings

	^ Bindings ifNil: [ Bindings := self defaultBindings ]