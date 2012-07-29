change logging
classModified: anEvent
	self flag: 'We should get rid of this please. normally if you send a changed event, is because something changed, so this is nonsense'.
	anEvent anyChanges ifTrue: [
		self changeClass: anEvent item from: anEvent oldItem
	]