accessing
gripLayoutFrame
	^ LayoutFrame
		fractions: (0 @ 1 corner: 0 @ 1)
		offsets: (0 @ (0 - self defaultHeight) corner: self defaultWidth @ 0)