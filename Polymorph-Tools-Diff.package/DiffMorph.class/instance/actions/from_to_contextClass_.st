from: old to: new contextClass: aClass
	"Set the old (src) and new (dst) text."

	self
		contextClass: aClass;
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