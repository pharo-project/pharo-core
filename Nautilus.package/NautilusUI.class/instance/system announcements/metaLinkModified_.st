metaLinkModified: anAnnouncement 
	| method|
	window ifNil: [ ^ self ].
	window isDisplayed ifFalse: [ ^ self ].
	method := self selectedMethod.
	anAnnouncement link methods 
		detect: [ :meth | meth selector = method selector ]
		ifFound: [ 			
				self forceSelectedMethod: method.
				self updateCategoryAndMethodList.
				self highlightCategory: method]