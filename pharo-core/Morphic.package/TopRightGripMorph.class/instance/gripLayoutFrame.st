accessing
gripLayoutFrame
	^ LayoutFrame
		fractions: (1 @ 0 corner: 1 @ 0)
		offsets: (0 - self defaultWidth @ -27 corner: 0 @ 0)