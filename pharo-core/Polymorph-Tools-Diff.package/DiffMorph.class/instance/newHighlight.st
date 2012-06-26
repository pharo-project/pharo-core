as yet unclassified
newHighlight
	"Anewser a new highlight."

	^TextHighlight new
		color: self modificationColor;
		borderWidth: 1;
		borderColor: self edgeColor