system announcements
methodAdded: anAnnouncement
	
	| method |
	window ifNil: [ ^ self ].
	window isDisplayed ifFalse: [ ^ self ].
	
	method := anAnnouncement item.
	(method methodClass = self selectedClass)
		ifTrue: [ 
			self resetMethodsListSelection.
			self removeAllFromMethodsIconsCache: method.
			self update ]