accessing
noticeSelectionChanged
	"Here I propagate the information that the selection has changed"
	"I can handler either a block or an association receiver-> selector"


	self onSelectionChangedBlockOrAssociation 
		ifNotNil: [:blockOrAssociation |
			blockOrAssociation isBlock
				ifTrue: [ blockOrAssociation cull: self selectedItems ]
				ifFalse: [| receiver selector |
					receiver := blockOrAssociation key.
					selector := blockOrAssociation value.
					receiver ifNil: [ ^self ].
					selector isSymbol
						ifTrue: [ | numArgs |
							numArgs := selector numArgs.
							numArgs = 0 ifTrue: [^ receiver perform: selector ].
							numArgs = 1 ifTrue: [ ^ receiver perform: selector with: self selectedItems ].
							self error: 'Invalid number of argument']]]