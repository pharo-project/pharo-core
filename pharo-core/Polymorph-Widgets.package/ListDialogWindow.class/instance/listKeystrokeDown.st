as yet unclassified
listKeystrokeDown
	listIndex = list size
		ifTrue: [ 
			self listIndex: 0.
			self focusSearch.
			^ true].
	^ false.