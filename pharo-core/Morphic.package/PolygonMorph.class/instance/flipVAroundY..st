geometry
flipVAroundY: centerY
	"Flip me vertically around the center.  If centerY is nil, compute my center of gravity."

	| cent |
	cent := centerY 
		ifNil: [bounds center y
			"cent := 0.
			vertices do: [:each | cent := cent + each y].
			cent asFloat / vertices size"]		"average is the center"
		ifNotNil: [centerY].
	self setVertices: (vertices collect: [:vv |
			vv x @ ((vv y - cent) * -1 + cent)]) reversed.