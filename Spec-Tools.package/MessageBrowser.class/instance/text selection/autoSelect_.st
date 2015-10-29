autoSelect: aSelector
	textModel
		readSelectionBlock:
			[ :text | 
			self selectedMessage ifNotNil:
					[ :msg | msg isComment 
						ifTrue: [ self intervalOf: aSelector inCommentText: text ] 
						ifFalse: [ self intervalOf: aSelector inCode: text of: msg ] ] ]