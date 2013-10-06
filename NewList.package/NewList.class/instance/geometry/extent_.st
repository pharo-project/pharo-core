extent: newExtent
	super extent: newExtent.
	
	"Change listMorph's bounds to the new width. It is either the size
	of the widest list item, or the size of self, whatever is bigger"
	self renderer ifNil: [ ^ self  ].
	self renderer width: ((self width-40) max: (self renderer maxWidth))