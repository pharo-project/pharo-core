editingMode
	^ editingMode
		ifNil: [ 
			self editingMode: RubPlainTextMode new.
			editingMode ]