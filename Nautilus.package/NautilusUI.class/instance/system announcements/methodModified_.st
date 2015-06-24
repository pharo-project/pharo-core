methodModified: anAnnouncement 
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
			method isTestMethod
				ifTrue: [ "Should update class icon"
					ClassesIconsCache removeKey: method methodClass ifAbsent: []].
			self updateClassView.
			oldMethod := anAnnouncement oldMethod.
			(selectedMethod = oldMethod)
				ifTrue: [
					self sourceTextModel hasUnacceptedEdits
						ifTrue: [
							self forceSelectedMethod: method.
							self updateCategoryAndMethodList.
							self highlightCategory: method]
						ifFalse: [
							self selectedMethod: method.
							self updateCategoryAndMethodList ]]]