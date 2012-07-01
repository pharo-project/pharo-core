as yet unclassified
bottomLayoutFrame
	"Answer the layout frame for a bottom edge."
	
	^LayoutFrame
		fractions: (0 @ 1 corner: 1 @ 1)
		offsets: (22 @ SystemWindow borderWidth negated corner: -22 @ 0)