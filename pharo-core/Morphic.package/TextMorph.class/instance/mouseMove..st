event handling
mouseMove: evt
	evt redButtonPressed ifFalse: [^ self enterClickableRegion: evt].
	self handleInteraction: [editor mouseMove: evt]