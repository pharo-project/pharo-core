source code area
methodAdded: anAnnouncement
	
	| method |
	window ifNil: [ ^ self ].
	window isDisplayed ifFalse: [ ^ self ].
	
	method := anAnnouncement method.
	(method methodClass = self selectedClass)
		ifTrue: [ 
			self resetMethodsListSelection.
			self removeAllFromMethodsIconsCache: method.
			self update.
			(method methodClass isMeta and: [ method methodClass methodDict size = 1 ])
				ifTrue: [ self changed: #instanceButtonLabel ] ]