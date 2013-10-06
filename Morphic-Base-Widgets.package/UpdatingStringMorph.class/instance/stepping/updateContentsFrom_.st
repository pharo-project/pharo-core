updateContentsFrom: aValue
	self growable
		ifTrue:
			[self contents: aValue]
		ifFalse:
			[self contentsClipped: aValue]