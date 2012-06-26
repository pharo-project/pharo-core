as yet unclassified
composeAllLines

	[currCharIndex <= theText size and: 
			[(currentY + defaultLineHeight) <= theContainer bottom]] whileTrue: [

		nowSliding ifTrue: [
			self slideOneLineDown ifNil: [^nil].
		] ifFalse: [
			self composeOneLine ifNil: [^nil].
		]
	].
