enable

	self isEnabled ifTrue: [ ^ self ].
	
	enabled := true.
	self editingMode: RubSmalltalkCodeMode new.