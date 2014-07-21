methodModified: anAnnouncement 
	| collection nonMetaMethodClass |

	window ifNil: [ ^ self ].
	window isDisplayed ifFalse: [ ^ self ].
	
	collection := self getList2.
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
					sourceTextArea hasUnacceptedEdits
						ifTrue: [ | sourceCode |
							sourceCode := sourceTextArea text.
							self forceSelectedMethod: method.
							self update.
							self highlightCategory: method.
							sourceTextArea setText: sourceCode.
							sourceTextArea hasEditingConflicts: true.
							sourceTextArea update: #codeChangedElsewhere ]
						ifFalse: [
							self selectedMethod: method.
							self update ]]]