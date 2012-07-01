system announcements
methodRemoved: anAnnouncement
	
	| method |
	window ifNil: [ ^ self ].
	window isDisplayed ifFalse: [ ^ self ].
		
	method := anAnnouncement item.
	(method methodClass = self selectedClass)
		ifTrue: [ 
			self selectedMethod = anAnnouncement item
				ifTrue: [ self selectedMethod: nil ].
			self resetMethodsListSelection.
			self removeAllFromMethodsIconsCache: method.
			self update ]