detect: aBlock
	^ self detect: aBlock ifNone: [ NotFound signalFor: aBlock ]