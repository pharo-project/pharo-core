releaseEditingState
	editingState ifNotNil: [ 
		editingState unplug.
		editingState := nil]