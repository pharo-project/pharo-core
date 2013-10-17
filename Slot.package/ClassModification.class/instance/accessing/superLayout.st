superLayout
	^ superclass
		ifNil: [ EmptyLayout instance ]
		ifNotNil: [ superclass layout ]