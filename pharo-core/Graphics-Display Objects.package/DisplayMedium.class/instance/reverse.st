coloring
reverse
	"Change all the bits in the receiver that are white to black, and the ones 
	that are black to white."

	self fill: self boundingBox rule: Form reverse fillColor: (Color quickHighLight: self depth)