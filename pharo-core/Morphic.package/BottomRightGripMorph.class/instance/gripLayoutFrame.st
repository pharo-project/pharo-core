accessing
gripLayoutFrame
	^ LayoutFrame
		fractions: (1 @ 1 corner: 1 @ 1)
		offsets: (0 - self defaultWidth @ (0 - self defaultHeight) corner: 0 @ 0)