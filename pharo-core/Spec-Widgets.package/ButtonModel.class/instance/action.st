morphic
action

	self widget ifNotNil: [:m | m takeKeyboardFocus ].
	self actionHolder contents value.
	" Here I set a dummy value just to make the holder raise an event "
	self actionPerformedHolder contents: nil.