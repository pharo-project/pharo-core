accessing
source
	^ self localChosen
		ifTrue: [self fromSource]
		ifFalse: [self sourceText]