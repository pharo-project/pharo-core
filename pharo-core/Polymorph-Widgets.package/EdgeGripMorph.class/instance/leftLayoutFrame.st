as yet unclassified
leftLayoutFrame
	"Answer the layout frame for a left edge."
	
	^LayoutFrame
		fractions: (0 @ 0 corner: 0 @ 1)
		offsets: (0 @ -7 corner: SystemWindow borderWidth @ (SystemWindow borderWidth - 26))