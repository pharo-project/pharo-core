methodRemoved: anAnnouncement
	| method |
	window ifNil: [ ^ self ].
	window isDisplayed
		ifFalse: [ ^ self ].
	method := anAnnouncement method.
	(method methodClass = self selectedClass
		or: [ method methodClass users includes: self selectedClass ])
		ifTrue:
			[ 
			self selectNextMethod.
			self removeAllFromMethodsIconsCache: method.
			method isTestMethod
				ifTrue:
					[ 
					ClassesIconsCache removeKey: method methodClass ifAbsent: [  ].
					self updateClassView ].	"Should update class icon"
			self updateCategoryAndMethodList.
			(method methodClass isMeta and: [ method methodClass hasMethods not ])
				ifTrue: [ self changed: #instanceButtonLabel ] ]