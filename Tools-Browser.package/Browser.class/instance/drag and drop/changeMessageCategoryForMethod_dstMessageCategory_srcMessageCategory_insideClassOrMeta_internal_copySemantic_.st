changeMessageCategoryForMethod: methodSel dstMessageCategory: dstMessageCategorySel srcMessageCategory: srcMessageCategorySel insideClassOrMeta: classOrMeta internal: internal copySemantic: copyFlag 
	"Recategorize the method named by methodSel. 
	If the dstMessageCategorySel is the allCategory, then recategorize 
	it from its parents."
	| success messageCategorySel |
	copyFlag
		ifTrue: [^ false].
	"only move semantic"
	messageCategorySel := dstMessageCategorySel
				ifNil: [srcMessageCategorySel].
	(success := messageCategorySel notNil
					and: [messageCategorySel ~= srcMessageCategorySel])
		ifTrue: [success := messageCategorySel == AllProtocol defaultName
						ifTrue: [self recategorizeMethodSelector: methodSel]
						ifFalse: [(classOrMeta organization categories includes: messageCategorySel)
								and: [classOrMeta organization
										classify: methodSel
										under: messageCategorySel
										suppressIfDefault: false.
									true]]].
	success
		ifTrue: [self changed: #messageList.
			internal
				ifFalse: [self setSelector: methodSel]].
	^ success