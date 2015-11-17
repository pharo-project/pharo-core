metaLinkModified: anAnnouncement 
	| collection nonMetaMethodClass |

	window ifNil: [ ^ self ].
	window isDisplayed ifFalse: [ ^ self ].
	
	collection := self classWidget getClassesList.
	nonMetaMethodClass:=anAnnouncement methodClass.
	self showInstance ifFalse:[nonMetaMethodClass:=nonMetaMethodClass theNonMetaClass].
	((collection includes: nonMetaMethodClass) or: [ anAnnouncement methodClass users includes: self selectedClass  ])
		ifTrue: [
			| method selectedMethod oldMethod |
			method := anAnnouncement newMethod.
			selectedMethod := self selectedMethod.
			self removeFromMethodsIconsCache: method.
			self updateClassView.
			oldMethod := anAnnouncement oldMethod.
			(selectedMethod = oldMethod)
				ifTrue: [
					self forceSelectedMethod: method.
					self updateCategoryAndMethodList.
					self highlightCategory: method
				]
		]