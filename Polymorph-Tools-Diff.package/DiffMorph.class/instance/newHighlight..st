as yet unclassified
newHighlight: type
	"Anewser a new highlight."

	^TextHighlight new
		color: (self colorForType: type);
		borderWidth: 1;
		borderColor: self edgeColor;
		fillWidth: true