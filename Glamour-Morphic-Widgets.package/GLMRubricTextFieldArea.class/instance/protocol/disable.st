disable

	self isEnabled ifFalse: [ ^ self ].
	
	enabled := false.
	self editingMode: RubPlainTextMode new.