from: old to: new
	"Set the old (src) and new (dst) text."

	self
		srcText: old;
		dstText: new.
	self
		setText;
		calculateDifference;
		calculateJoinMappings;
		calibrateScrollbar;
		applyHighlights;
		applyJoin;
		applyMap