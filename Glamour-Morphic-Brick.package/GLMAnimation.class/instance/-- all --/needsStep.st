needsStep

	^ doStep ifNil: [ doStep := true ]