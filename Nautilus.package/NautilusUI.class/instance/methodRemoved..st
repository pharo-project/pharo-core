source code area
methodRemoved: anAnnouncement
	
	| method |
	window ifNil: [ ^ self ].
	window isDisplayed ifFalse: [ ^ self ].
		
	method := anAnnouncement methodRemoved.
	(method methodClass = self selectedClass)
		ifTrue: [ 
			self selectedMethod = anAnnouncement methodRemoved
				ifTrue: [ self selectedMethod: nil ].
			self resetMethodsListSelection.
			self removeAllFromMethodsIconsCache: method.
			self update.
			(method methodClass isMeta and: [ method methodClass methodDict isEmpty ])
				ifTrue: [ self changed: #instanceButtonLabel ] ]