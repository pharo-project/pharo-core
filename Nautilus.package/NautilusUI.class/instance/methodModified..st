system announcements
methodModified: anAnnouncement 
	| collection |

	window isNil ifTrue: [ ^ self ].
	window isDisplayed ifFalse: [ ^ self ].
	
	collection := self getList2.
	
	(collection includes: anAnnouncement itemClass)
		ifTrue: [
			| method |
			method := anAnnouncement item.	
			self removeFromMethodsIconsCache: method.
			self updateClassView.
			self selectedMethod = anAnnouncement oldItem
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