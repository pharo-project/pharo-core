contents
commentContents
	"documentation for the selected method"

	| poss aClass aSelector |
	^ (poss := (aClass := self selectedClassOrMetaClass)
						ifNil:
							['----']
						ifNotNil:
							[(aSelector := self selectedMessageName)
								ifNil:
									['---']
								ifNotNil:
									[(aClass precodeCommentOrInheritedCommentFor: aSelector)", String cr, String cr, self timeStamp"
"which however misses comments that are between the temps  declaration and the body of the method; those are picked up by ·aClass commentOrInheritedCommentFor: aSelector· but that method will get false positives from comments *anywhere* in the method source"]])
		isEmptyOrNil
			ifTrue:
				[aSelector
					ifNotNil:
						[((aClass methodHeaderFor: aSelector), '

Has no comment') asText makeSelectorBoldIn: aClass]
					ifNil:
						['Hamna']]
			ifFalse:	[aSelector
				ifNotNil: [((aClass methodHeaderFor: aSelector), '

', poss) asText makeSelectorBoldIn: aClass]
				ifNil: [poss]]