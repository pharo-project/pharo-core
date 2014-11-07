lastPane

	self paneCount = 0 ifTrue: [ ^ nil ].
	^ self panes last.