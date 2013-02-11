protocol-shortcuts
on: aShortcut do: aBlock

	additionalKeyBindings at: aShortcut put: aBlock.
	
	self widget ifNotNil:[:w | w on: aShortcut do: aBlock ]