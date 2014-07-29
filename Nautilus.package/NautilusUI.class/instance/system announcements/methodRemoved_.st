methodRemoved: anAnnouncement
	
	| method |
	window ifNil: [ ^ self ].
	window isDisplayed ifFalse: [ ^ self ].
		
	method := anAnnouncement methodRemoved.
	((method methodClass = self selectedClass) or: [ method methodClass users includes: self selectedClass  ])
		ifTrue: [ 
			self selectedMethod = anAnnouncement methodRemoved
				ifTrue: [ self selectedMethod: nil ].
			self resetMethodsListSelection.
			self removeAllFromMethodsIconsCache: method.
			method isTestMethod
				ifTrue: [ "Should update class icon"
					ClassesIconsCache removeKey: method methodClass ifAbsent: [].
					self updateClassView ].
			self update.
			(method methodClass isMeta and: [ method methodClass hasMethods not ])
				ifTrue: [ self changed: #instanceButtonLabel ] ]