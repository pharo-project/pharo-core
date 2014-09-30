editingState
	^ editingState ifNil: [editingState := self newEditingState]