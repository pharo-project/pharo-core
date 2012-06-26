shaping
diamondOval
	"Set my vertices to an array of edge midpoint vertices. 
	Order of vertices is in the tradion of warpblt quads."
	| b r |
	b := self bounds.
	r := {b leftCenter. b bottomCenter. b rightCenter. b topCenter}.
	self setVertices: r