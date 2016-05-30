autoSelect: aSelector
	textModel
		readSelectionBlock:
			[ :text | 
			self selectedMessage ifNotNil:
					[ :msg | msg isCompiledMethod
						ifFalse: [ self intervalOf: aSelector inCommentText: text ] 
						ifTrue: [ self intervalOf: aSelector inCode: text of: msg ] ] ]