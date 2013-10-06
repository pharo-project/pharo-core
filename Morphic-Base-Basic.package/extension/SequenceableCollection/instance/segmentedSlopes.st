segmentedSlopes
	"For a collection of floats. Returns the slopes for straight 
	segments between vertices."
	"last slope closes the polygon. Always return same size as 
	self. "
	^ self collectWithIndex: [:x :i | (self atWrap: i + 1) - x]