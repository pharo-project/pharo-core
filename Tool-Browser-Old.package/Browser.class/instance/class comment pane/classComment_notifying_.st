classComment: aText notifying: aPluggableTextMorph 
	"The user has just entered aText.
	It may be all red (a side-effect of replacing the default comment), so remove the color if it is."

	| theClass cleanedText redRange |
	theClass := self selectedClassOrMetaClass.
	theClass
		ifNotNil: [cleanedText := aText asText.
			redRange := cleanedText rangeOf: TextColor red startingAt: 1.
			redRange size = cleanedText size
				ifTrue: [cleanedText
						removeAttribute: TextColor red
						from: 1
						to: redRange last ].
			theClass comment: aText stamp: Author changeStamp].
	self changed: #classCommentText.
	^ true