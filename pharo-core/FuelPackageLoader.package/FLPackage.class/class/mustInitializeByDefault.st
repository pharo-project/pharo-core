initializers
mustInitializeByDefault

	^ MustInitializeByDefault ifNil: [ MustInitializeByDefault := true ].