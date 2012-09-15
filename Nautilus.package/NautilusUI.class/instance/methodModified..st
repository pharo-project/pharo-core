system announcements
methodModified: anAnnouncement 
	| collection |

	window isNil ifTrue: [ ^ self ].
	window isDisplayed ifFalse: [ ^ self ].
	
	collection := self getList2.
	
	(collection includes: anAnnouncement methodClass)
		ifTrue: [
			| method |
			method := anAnnouncement newMethod.	
			self removeFromMethodsIconsCache: method.
			self updateClassView.
			self selectedMethod = anAnnouncement oldMethod
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