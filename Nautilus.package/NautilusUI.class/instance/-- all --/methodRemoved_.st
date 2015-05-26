methodRemoved: anAnnouncement
	
	| method |
	window ifNil: [ ^ self ].
	window isDisplayed ifFalse: [ ^ self ].
		
	method := anAnnouncement method.
	((method methodClass = self selectedClass) or: [ method methodClass users includes: self selectedClass  ])
		ifTrue: [ 
			self selectedMethod = anAnnouncement method
				ifTrue: [ self selectedMethod: nil ].
			self resetMethodsListSelection.
			self removeAllFromMethodsIconsCache: method.
			method isTestMethod
				ifTrue: [ "Should update class icon"
					ClassesIconsCache removeKey: method methodClass ifAbsent: [].
					self updateClassView ].
			self updateCategoryAndMethodList.
			(method methodClass isMeta and: [ method methodClass hasMethods not ])
				ifTrue: [ self changed: #instanceButtonLabel ] ]