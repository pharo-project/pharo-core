as yet unclassified
listKeystrokeUp
	listIndex = 1 
		ifTrue: [ 
			self listIndex: 0.
			self focusSearch.
			^ true].
	^ false.