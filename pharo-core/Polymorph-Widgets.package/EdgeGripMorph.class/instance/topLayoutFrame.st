as yet unclassified
topLayoutFrame
	"Answer the layout frame for a top edge."
	
	^LayoutFrame
		fractions: (0 @ 0 corner: 1 @ 0)
		offsets: (22 @ -29 corner: -22 @ (SystemWindow borderWidth - 29))