as yet unclassified
rightLayoutFrame
	"Answer the layout frame for a right edge."
	
	^LayoutFrame
		fractions: (1 @ 0 corner: 1 @ 1)
		offsets: (SystemWindow borderWidth negated @ -7 corner: 0 @ (SystemWindow borderWidth - 26))