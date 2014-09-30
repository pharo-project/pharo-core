calculateInnerBounds: baseInnerBounds

		^ baseInnerBounds
			left: baseInnerBounds left + self paddingLeft;
			right: baseInnerBounds right - self paddingRight;
			top: baseInnerBounds top + self paddingTop;
			bottom: baseInnerBounds bottom - self paddingBottom.