system announcements
methodModified: anAnnouncement 
	| collection |

	window isNil ifTrue: [ ^ self ].
	window isDisplayed ifFalse: [ ^ self ].
	
	collection := self getList2.
	
	(collection includes: anAnnouncement methodClass)
		ifTrue: [
			| method selectedMethod oldMethod |
			method := anAnnouncement newMethod.
			selectedMethod := self selectedMethod.
			self removeFromMethodsIconsCache: method.
			self updateClassView.
			oldMethod := anAnnouncement oldMethod.
			(selectedMethod = oldMethod 
				or: [ 
					oldMethod hasBreakpoint 
					and: [ selectedMethod methodClass = oldMethod methodClass 
					and: [ selectedMethod selector = oldMethod selector ]]])
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